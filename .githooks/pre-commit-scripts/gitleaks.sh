#!/usr/bin/env bash
#
# Gitleaks pre-commit hook
# - Auto-downloads latest release once per month
# - Updates cached binary once per month
# - Checks if .gitleaks.toml present to extend default config
# - Scans staged changes
# - Aborts commit on secrets

set -euo pipefail

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

CACHE_DIR="${HOME}/.cache/gitleaks-precommit"
mkdir -p "$CACHE_DIR"
GITLEAKS_BIN="$CACHE_DIR/gitleaks"
GITLEAKS_TIMESTAMP="$CACHE_DIR/last_update"
CONFIG_FILE="./.gitleaks.toml"
VERSION_FILE="$CACHE_DIR/latest_version.txt"

echo -e "${YELLOW}Preparing Gitleaks pre-commit hook...${RESET}"

# --- Step 1: Detect OS and ARCH ---
OS=$(uname | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)
case "$OS" in
  darwin) OS="darwin" ;;
  linux)  OS="linux"  ;;
  mingw*|msys*|cygwin*) OS="windows" ;;
  *) echo -e "${RED}Unsupported OS: $OS${RESET}"; exit 1 ;;
esac
case "$ARCH" in
  x86_64|amd64) ARCH="x64" ;;
  arm64|aarch64) ARCH="arm64" ;;
  armv6) ARCH="armv6" ;;
  armv7) ARCH="armv7" ;;
  i386|i686) ARCH="x32" ;;
  *) echo -e "${RED}Unsupported arch: $ARCH${RESET}"; exit 1 ;;
esac

# --- Step 2: Fetch latest version once per month ---
FETCH_LATEST=false
if [[ ! -f "$VERSION_FILE" ]]; then
    FETCH_LATEST=true
elif [[ $(find "$VERSION_FILE" -mtime +30) ]]; then
    FETCH_LATEST=true
fi

if [[ "$FETCH_LATEST" = true ]]; then
    echo -e "${YELLOW}Fetching latest Gitleaks release version...${RESET}"
    REPO="gitleaks/gitleaks"
    API_URL="https://api.github.com/repos/${REPO}/releases/latest"
    VERSION=$(curl -sSL "$API_URL" | grep -Po '"tag_name": *"\K.*?(?=")' || true)

    if [[ -z "$VERSION" ]]; then
        VERSION="v8.28.0"  # fallback version
        echo -e "${YELLOW}Could not fetch latest release, falling back to $VERSION${RESET}"
    fi
    echo "$VERSION" > "$VERSION_FILE"
else
    VERSION=$(cat "$VERSION_FILE")
fi

# --- Step 3: Build VER_NUM and FILENAME ---
VER_NUM=${VERSION#v}           # remove leading 'v'
EXT="tar.gz"
[[ "$OS" = "windows" ]] && EXT="zip"
FILENAME="gitleaks_${VER_NUM}_${OS}_${ARCH}.${EXT}"
DOWNLOAD_URL="https://github.com/gitleaks/gitleaks/releases/download/${VERSION}/${FILENAME}"

# --- Step 4: Download/update Gitleaks binary if missing or older than 1 month ---
UPDATE_BINARY=false
if [[ ! -x "$GITLEAKS_BIN" ]]; then
  UPDATE_BINARY=true
elif [[ ! -f "$GITLEAKS_TIMESTAMP" ]] || [[ $(find "$GITLEAKS_TIMESTAMP" -mtime +30) ]]; then
  UPDATE_BINARY=true
fi

if [[ "$UPDATE_BINARY" = true ]]; then
  echo -e "${YELLOW}Downloading/updating Gitleaks binary $FILENAME ...${RESET}"
  TMP_FILE="$CACHE_DIR/$FILENAME"

  if ! curl -fsSL "$DOWNLOAD_URL" -o "$TMP_FILE"; then
    if [[ ! -x "$GITLEAKS_BIN" ]]; then
      echo -e "${RED}Failed to download Gitleaks binary from $DOWNLOAD_URL${RESET}"
      exit 1
    else
      echo -e "${YELLOW}Warning: Could not update binary, using cached version.${RESET}"
    fi
  else
    if [[ "$EXT" = "tar.gz" ]]; then
      tar -xzf "$TMP_FILE" -C "$CACHE_DIR"
    else
      unzip -o "$TMP_FILE" -d "$CACHE_DIR" >/dev/null
    fi
    chmod +x "$GITLEAKS_BIN"
    date +%s > "$GITLEAKS_TIMESTAMP"
    echo -e "${GREEN}Gitleaks binary ready at $GITLEAKS_BIN${RESET}"
  fi
fi

GITLEAKS_CMD="$GITLEAKS_BIN"

# --- Step 5: Check if config file present ---
if [[ ! -f "$CONFIG_FILE" ]]; then
  SCAN_COMMAND="$GITLEAKS_CMD protect --staged --redact --gitleaks-ignore-path .  --verbose"
else
  SCAN_COMMAND="$GITLEAKS_CMD protect --staged --redact --config ./.gitleaks.toml --gitleaks-ignore-path .  --verbose"
fi

# --- Step 6: Run Gitleaks scan against staged changes ---
if ! $SCAN_COMMAND; then
  echo -e
  exit 1
else
  echo -e
fi

exit 0
