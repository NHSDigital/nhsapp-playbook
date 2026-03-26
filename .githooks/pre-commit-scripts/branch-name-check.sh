#!/usr/bin/env bash

command -v git >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  echo "It looks like you don't have git installed. Please install it and then re-run."
  exit 1
fi

RED="\033[0;31m"
RESET="\033[0m"

# check git branch name to start with "NHSO-00000"
if ! git branch --show-current | grep -Eq '^(feature|hotfix|release)/(nhso|ops)-[0-9]+-.*$|^release/v[0-9.]+$'; then
  git rev-parse --abbrev-ref HEAD
  echo -e "${RED}##### YOUR BRANCH NAME NEEDS TO FOLLOW THE STANDARD FORMAT:  #####"
  echo -e "##### (feature OR release OR hotfix)/(nhso OR ops)-<ticket-number>-description-of-branch  #####"
  echo -e "##### e.g. hotfix/ops-9999-quick-fixes-to-pipelines  #####"
  echo -e "##### e.g. feature/nhso-9999-updates-to-unit-tests  #####${RESET}"
  exit 1
fi
