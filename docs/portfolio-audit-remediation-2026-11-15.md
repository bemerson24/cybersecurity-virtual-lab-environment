# Portfolio Audit Remediation — November 15, 2026

**Scope:** My four existing public repositories — [VirtualBox lab](../README.md), [Ubuntu WSL2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline), [Pi-hole](https://github.com/bemerson24/raspberry-pi-pihole), and [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi). I will **improve the existing work before expanding my profile or adding projects**.

**Goal:** Address every finding from the November 15 portfolio audit, finishing with a **controlled, documented security-event investigation** that demonstrates junior SOC analytical skills. Progress is marked complete only after the change or evidence has been verified.

## Execution order and acceptance criteria

### 1. Professional voice, scope and status consistency

- [ ] Use first person for my actions and findings; neutral language is appropriate for equipment, command output and technical facts. Remove third-person descriptions of my work such as "the operator" and "the user".
- [ ] Confirm that each README and the portfolio overview describe the same current project status. Separate completed checks from pending tests and inferred explanations.
- [ ] Make the status of the VirtualBox compatibility report explicit: saved in my repo, **not yet submitted to VirtualBox issue #972**.

**Done when:** All four README files and the central portfolio entry agree on key findings and unfinished work; a textual pass finds no third-person author references.

### 2. Navigation and readability

- [ ] Give the main lab README a concise current-status summary and keep detailed diagnostics in the technical worksheet/history.
- [ ] Maintain one linked portfolio project index and one audit tracker; eliminate unnecessary repeated project summaries.
- [ ] Ensure all internal Markdown references resolve to existing files and distinguish an actual result from a roadmap item.

**Done when:** Navigation links are verified and a reader can locate the evidence, result, unresolved question and next step from the repository entry page.

### 3. Evidence provenance and coverage

- [ ] Inventory existing screenshots versus statements that currently rely on reviewed but unpublished command output or screenshots.
- [ ] Add only selected, sanitized artifacts when genuinely available; do not generate substitute screenshots or treat a transcribed observation as an archived file.
- [ ] For VirtualBox, do not claim successful guest-to-guest connectivity; VM stability remains unresolved. Preserve the existing snapshots and disk chains.
- [ ] For Pi-hole, preserve the distinction between blocked DNS requests, application telemetry hypotheses, and proof of network connections or compromise. Device-identity attribution from the October router test remains unverified.
- [ ] For OctoPi, retain the retrospective label; historical logs and configurations are unavailable.

**Done when:** Each major factual claim can be traced to a visible artifact, a documented operator observation explicitly identified as such, or a clearly marked limitation.

### 4. Privacy review of already-published images and future artifacts

- [ ] Visually review the five WSL2 screenshots and four Pi-hole screenshots already published for account names, local identifiers, identifiable URLs, MAC addresses, IP addresses, tokens, sensitive paths and private information.
- [ ] Replace any sensitive screenshot with a redacted version; do not assume Markdown sanitization also sanitizes the underlying image.
- [ ] Review the VirtualBox log before any upstream attachment. Do not upload unsanitized VM logs, packet captures or private keys.
- [ ] Confirm no secrets are exposed in public documentation or screenshots. Existing text-only checks are preliminary; visual/image review is outstanding.

**Done when:** Every published image is inspected and any findings are remediated; records accurately state what was and was not checked.

### 5. Consistent AI-writing and documentation disclosure

- [ ] Standardize existing writing-assistance notes to brief first-person descriptions without overstating independent validation.
- [ ] Ensure commands, results, technical claims and event timestamps come from actual observations; identify interpretations and unverified hypotheses.
- [ ] Keep the public reports written in my voice. Documentation assistance is not a substitute for personal understanding or ability to reproduce the steps.

**Done when:** Applicable existing case studies use a consistent, accurate disclosure and no claim of testing or review is added without evidence.

### 6. Cross-repository technical and presentation verification

- [ ] Recheck the four repository entry pages, project index, roadmap, technical links, and known outstanding questions after corrections.
- [ ] Review screenshots for readability as well as privacy; verify essential diagrams, code samples and tables are legible in GitHub.
- [ ] Confirm the project descriptions do not conflate a home network, a personal endpoint capture, class work, or production SOC operations.

**Done when:** Recheck is documented and any blocked visual checks remain visibly open rather than reported as complete.

### 7. Final milestone — Controlled security-event investigation (LAST)

- [ ] Before creating any event, choose a benign, explicitly bounded test on an existing authorized system; record the test hypothesis and how to identify its event(s).
- [ ] Confirm the applicable log is readable and the necessary auditing is already enabled. Avoid account lockout, simulated attacks, changing Windows security policy, disabling VBS/BitLocker/WSL2, or using the unstable VirtualBox guest.
- [ ] Generate/observe the authorized benign event, capture **actual** timestamps and event identifiers, correlate with an independent observation where possible, and distinguish expected activity from a detection finding.
- [ ] Write a junior-SOC-style case study: question, environment, evidence, timeline, competing explanations, triage/disposition, false-positive considerations, limits, and a brief reproducible procedure.
- [ ] Review and sanitize all evidence, publish the finished investigation, and link it from the portfolio overview, project index, and roadmap.

**Done when:** A reproducible, bounded investigation exists with recorded security-event evidence, an evidence-supported disposition, and no unsupported incident claim.

## Starting baseline

- The initial audit found **four** public repositories and **16** Markdown documents. The internal Markdown links checked mapped to existing project files.
- The initial text audit identified no obvious published plaintext passwords or private key bodies. **This is not a visual screenshot audit.**
- At audit start there were **nine** existing public screenshots to review: five in the WSL2 baseline repository and four in the Pi-hole repository.
- The VirtualBox guest-to-guest test, a sanitized full `VBox.log` attachment, and several Pi-hole corroborating captures remain pending.
- The public VirtualBox issue report is saved locally in the lab repo, not posted upstream.

## Review record

| Date | Change | Evidence | Status |
| --- | --- | --- | --- |
| 2026-11-15 | Established fixed-scope audit remediation plan, with controlled security event last | This document and linked initial audit findings | Recorded; substantive tasks remain open |

I will update this record only after verifying each meaningful correction. This tracker is a record of portfolio maintenance, not evidence that the underlying systems were tested again.
