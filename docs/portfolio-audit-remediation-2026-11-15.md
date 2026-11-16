# Portfolio Audit Remediation — November 15, 2026

**Scope:** My four existing public repositories — [VirtualBox lab](../README.md), [Ubuntu WSL2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline), [Pi-hole](https://github.com/bemerson24/raspberry-pi-pihole), and [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi). I will **improve the existing work before expanding my profile or adding projects**.

**Goal:** Address every finding from the November 15 portfolio audit, finishing with a **controlled, documented security-event investigation** that demonstrates junior SOC analytical skills. Progress is marked complete only after the change or evidence has been verified.

**Evidence audit:** [Inventory of published artifacts, privacy-review status and missing corroboration](portfolio-evidence-inventory-2026-11-15.md).

## Execution order and acceptance criteria

### 1. Professional voice, scope and status consistency

- [x] Use first person for my actions and findings; neutral language is appropriate for equipment, command output and technical facts. Remove third-person descriptions of my work such as "the operator" and "the user". **Verified on the four README files, portfolio overview and two main lab investigation documents; the additional case studies reviewed were also first-person.**
- [x] Confirm that each README and the portfolio overview describe the same current project status. Separate completed checks from pending tests and inferred explanations. **Verified in the four entry READMEs and central overview.**
- [x] Make the status of the VirtualBox compatibility report explicit: saved in my repo, **not yet submitted to VirtualBox issue #972**.

**Done when:** All four README files and the central portfolio entry agree on key findings and unfinished work; a textual pass finds no third-person author references.

### 2. Navigation and readability

- [x] Give the main lab README a concise current-status summary and keep detailed diagnostics in the technical worksheet/history. **Revised and re-fetched main README.**
- [x] Maintain one linked portfolio project index and one audit tracker; eliminate unnecessary repeated project summaries. **Central overview, project index and roadmap link to this tracker; lab README repeated network details reduced.**
- [ ] Ensure all internal Markdown references resolve to existing files and distinguish an actual result from a roadmap item.

**Done when:** Navigation links are verified and a reader can locate the evidence, result, unresolved question and next step from the repository entry page.

### 3. Evidence provenance and coverage

- [x] Inventory existing screenshots versus statements that currently rely on reviewed but unpublished command output or screenshots. **See the [evidence coverage inventory](portfolio-evidence-inventory-2026-11-15.md); gaps remain open for remediation.**
- [ ] Add only selected, sanitized artifacts when genuinely available; do not generate substitute screenshots or treat a transcribed observation as an archived file.
- [ ] For VirtualBox, do not claim successful guest-to-guest connectivity; VM stability remains unresolved. Preserve the existing snapshots and disk chains.
- [ ] For Pi-hole, preserve the distinction between blocked DNS requests, application telemetry hypotheses, and proof of network connections or compromise. Device-identity attribution from the October router test remains unverified.
- [ ] For OctoPi, retain the retrospective label; historical logs and configurations are unavailable.

**Done when:** Each major factual claim can be traced to a visible artifact, a documented operator observation explicitly identified as such, or a clearly marked limitation.

### 4. Privacy review of already-published images and future artifacts

- [ ] Visually review the five WSL2 screenshots and four Pi-hole screenshots already published for account names, local identifiers, identifiable URLs, MAC addresses, IP addresses, tokens, sensitive paths and private information. **Nine of ten published image blobs directly matched and visually reviewed (five WSL2, four Pi-hole). An uploaded VirtualBox cover was visually reviewed, but its bytes differ from the published GitHub cover; the exact published version is not yet cleared. Five WSL2 screenshots show the local username; privacy hardening remains open.**
- [ ] Replace any sensitive screenshot with a redacted version; do not assume Markdown sanitization also sanitizes the underlying image.
- [ ] Review the VirtualBox log before any upstream attachment. Do not upload unsanitized VM logs, packet captures or private keys.
- [ ] Confirm no secrets are exposed in public documentation or screenshots. Existing text-only checks are preliminary; visual/image review is outstanding.

**Done when:** Every published image is inspected and any findings are remediated; records accurately state what was and was not checked.

### 5. Consistent AI-writing and documentation disclosure

- [x] Standardize existing writing-assistance notes to brief first-person descriptions without overstating independent validation. **Verified identical revised notes in three existing case studies (one VirtualBox-lab repository, two Pi-hole).**
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
- At audit start there were **nine** public technical screenshots to review: five in the WSL2 baseline repository and four in the Pi-hole repository, plus the main lab's **one cover image**. Three Pi-hole screenshots (`02-top-clients.png`, `03-filtered-query-log.png`, `04-router-client.png`) were recovered from a local archive, matched **exactly** to the published Git blobs (SHA-1), and visually inspected: displayed client labels are anonymized and the router MAC is redacted; no obvious credential or personal identifier is visible in those three. **An earlier local archive's `01-dashboard.png` did not match the published blob; a subsequent direct user upload DID match exactly** (`b1e82233b0389ec30c01ba18919d104551920354`, 115,705 bytes). Its visible totals and privacy were reviewed. All five WSL2 screenshots now exactly match the uploaded full repository ZIP's Git hashes, and each has been visually reviewed. All five visibly contain a local username; none contained EXIF metadata or a visible password/private key/token. The Pi-hole dashboard passed direct visual inspection. An uploaded VirtualBox cover was also reviewed, but the image does not match the exact public GitHub blob (uploaded 1,951,336 bytes vs public 1,714,201 bytes). Its actual published version remains unverified. Account-name redaction or an explicit retention decision for WSL2 is pending.
- The VirtualBox guest-to-guest test, a sanitized full `VBox.log` attachment, and several Pi-hole corroborating captures remain pending.
- The public VirtualBox issue report is saved locally in the lab repo, not posted upstream.

## Review record

| Date | Change | Evidence | Status |
| --- | --- | --- | --- |
| 2026-11-15 | Established fixed-scope audit remediation plan, with controlled security event last | This document and linked initial audit findings | Recorded |
| 2026-11-15 | Revised lab README, overview, project index and SOC roadmap for concise status and audit-first navigation | GitHub updates re-fetched and checked | Verified |
| 2026-11-15 | Verified first-person voice and consistent project-status framing | Four README files, central overview and main investigation documents inspected | Verified for specified files |
| 2026-11-15 | Standardized documentation-assistance notes in three existing case studies | One TCP/TLS case study; two Pi-hole case studies | Verified |
| 2026-11-15 | Inspected published Pi-hole evidence images 02, 03 and 04 | Git blob SHA-1 matched to recovered local screenshots; visual review of displayed content | Partial image audit: 3/10 public images (including cover) |
| 2026-11-15 | Published [cross-project evidence coverage inventory](portfolio-evidence-inventory-2026-11-15.md) | Listed public files, original-observation limits, hash-matched screenshots and seven unchecked images | Inventory complete; evidence gaps and image review remain open |
| 2026-11-15 | Inspected all five original WSL2 images against GitHub published blobs and accompanying README | User-provided repository ZIP; exact Git SHA-1 matches; direct visual and EXIF check | 8/10 images reviewed; local username appears in all WSL2 images; redaction decision/action pending |
| 2026-11-15 | Inspected exact published Pi-hole dashboard image and aggregate DNS evidence | Direct upload; Git blob SHA-1 `b1e82233b0389ec30c01ba18919d104551920354`; PNG metadata/visual review | 9/10 published image blobs reviewed; Pi-hole image audit complete |
| 2026-11-15 | Reviewed uploaded VirtualBox cover image for layout, content and visible privacy issues | Uploaded PNG 1,951,336 bytes and SHA-1 `df2eae99d8931af5fb06c5bc8ea82192cda31ccd`; GitHub reports different public SHA-1 `49b5c218c9e70d04a176dea713561f0c75c9d942` (1,714,201 bytes) | Uploaded image passed visual content review; exact published image not cleared; WSL2 account-name remediation open |
| 2026-11-15 | Documented Docker/Uptime Kuma/Beszel maintenance on existing Pi-hole host | [Published case study](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/docker-uptime-kuma-beszel-monitoring-2026-11-15.md), Pi-hole README, central overview and project index | Existing-project documentation only; Beszel agent and post-migration monitor screenshot remain pending; controlled security event stays last |
| 2026-11-16 | Updated the existing Pi-hole monitoring case study with verified Unbound forwarding and Beszel Agent recovery; aligned README, portfolio overview and project index | Agent container Up at three-minute follow-up; Beszel `home-dns` dashboard Up with initial CPU/Docker CPU graphs; prior Pi-hole query log records Unbound forwarding | Beszel agent connection confirmed; additional hardware graphs and sanitized evidence archive pending; controlled security event remains last |
| 2026-11-16 | Revisited Uptime Kuma after the slim-image migration | Dashboard screenshot shows four monitors Up, including the original router/internet/DNS checks; selected Pi-hole DNS monitor reports 60-second interval, 2 ms current, 4.19 ms average, ~28 minutes green bars | Operational check verified; screenshot not yet committed as public evidence |
| 2026-11-16 | Inspected later Beszel system-monitoring screenshot | `home-dns` Up through `beszel.sock`; host CPU and memory curves populated; Docker CPU/memory lines flat at zero in 1-hour view | Host CPU/memory verified; Docker resource metrics, disk/network/temperature panels and public sanitized image remain open |

I will update this record only after verifying each meaningful correction. This tracker is a record of portfolio maintenance, not evidence that the underlying systems were tested again.
