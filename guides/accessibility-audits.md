# Accessibility audits in the NHS App

What needs to happen and who needs to be involved in completing an accessibility audit on the NHS App?

This page presents a list of all of the things you need to do, what they result in, and how they work. These are listed in a rough order but it may not be quite so linear in reality. 

Gov.uk also has useful guidance on [getting an accessibility audit](https://www.gov.uk/service-manual/helping-people-to-use-your-service/getting-an-accessibility-audit).

## 1. Planning the audit

### Kick off

This usually includes UCD leads and lead product owner. You'll need to agree timelines and make sure the programme knows what the plan is. Start the process the quarter before you actually want the audit to take place. We should audit either:

- 12 months after the last clean audit (i.e. that passed all accessibility tests), or
- when there are significant changes to the UI, for example a new information architecture

### Agree the scope

We audit across iOS, Android and the web. The audit should include all screens that:

- are owned and built by app teams, and
- are new since the last audit, or
- have been changed since the last audit, or
- were not included in the last audit (testing technologies and criteria can change)

Consider also including areas with: 

- recurring issues
- unresolved advisory issues

You can get a copy of previous audits by speaking to the [App's UCD Ops team](ucd-ops.md).

We do not include error screens because it's difficult to recreate them.

If a screen has only had very minor changes it may not need to be included. Accessibility testing in the lab could be sufficient. It's tricky to define what we mean by minor, but as a guiding principle we include a page if we've: 

- redesigned components
- added new features
- updated content
- changed navigation patterns

These things can often cause accessibility issues.

### Confirm the budget

We use an independent supplier. Budget approval is given by the PMO (Kirsty W), lead product owner (James H) and the deputy director of delivery (Joe R) for the app. Work with PMO to draft a SoW for the work.

### Engage the supplier

You'll need to create a list of URLs of in scope screens and journeys to give to the audit supplier to support the SoW. This should highlight:

- most common or important journeys
- screens with complex interactions or business logic
- screens using custom components
- any content required for legal compliance (e.g. T&Cs, privacy notices)

## 2. Running the audit

### Set up the test environment

Work with our QA lead (Ben O) to provide the auditors with access to test environments they can use to carry out the audit. These environments should accurately reflect the NHS App that our users see. This usually means:

- a production‑like environment (e.g. staging)
- realistic test data
- access to all relevant screens and flows
- access to all in-scope variations (e.g. EMIS/TPP, different ODB permissions)

You'll need to generate test credentials.

### Complete the testing

Testing is all carried out by the supplier. No action is requited from us, other than to answer questions or help with an access issues. 

## 3. Reviewing the results

Results from an audit are usually shared as an online report. This will include: 

- a detailed CSV table of issues
- screenshots and examples for each identified issue
- severity ratings for each issue
- recommended fixes for each issue
- the outcome of the test as a certificate

This is the formal record of our legal compliance that is used to write the NHS App accessibility statement.

You'll need to:

- save the report and all related documents in the NHS App Sharepoint folders
- organise a call with the supplier and key stakeholders to go through the results
- summarise the results for app leadership and product leads with next steps

### Update the accessibility statement

Work with the lead content designer to update the [NHS App accessibility statement](https://www.nhs.uk/nhs-app/about/nhs-app-legal-and-cookies/nhs-app-accessibility-statement/). This needs to be updated as and when bugs are fixed. It must be reviewed by legal before it's published.

## 4. Fixing the bugs

Work with product and delivery to make a plan for fixing the issues. This will likely need to consider

- effort/budget implications
- quick wins
- any dependencies with other teams

Document all issues in JIRA with the label `Accessibility` so we can track progress in the action tracker. They'll need:

- an owner for identifying the issues in the codebase
- impact/severity rating to help owning teams prioritise. Make it clear if it's an advisory issue that doesn't affect compliance. 
- suggested fix, if there is one (without mandating that this is necessarily the right way for us to fix it)

Owning teams need to estimate effort required for each fix and prioritise.

## 5. Running a re-test

Once bugs have been fixed, you'll need to run a re-test.

This should only test screens that failed in the first audit. 

If further bugs are found in the retest then you'll need to go through the process with product and delivery again to document and prioritise them in Jira until we can get a clean audit report.


---

| Status | Last reviewed |
| ------ | ------------- |
| Draft  | 2026-03-31    |
