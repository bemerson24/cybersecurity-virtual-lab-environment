# Portfolio Audit Remediation — November 15, 2026

**Scope:** My four existing public repositories — [VirtualBox lab](../README.md), [Ubuntu WSL2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline), [Pi-hole](https://github.com/bemerson24/raspberry-pi-pihole), and [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi). I will **improve the existing work before expanding my profile or adding projects**.

**Goal:** Address every finding from the November 15 portfolio audit, finishing with a **controlled, documented security-event investigation** that demonstrates junior SOC analytical skills. Progress is marked complete only after the change or evidence has been verified.

**Evidence audit:** [Inventory of published artifacts, privacy-review status and missing corroboration](portfolio-evidence-inventory-2026-11-15.md).

## Execution order and acceptance criteria

### 1. Professional voice, scope and status consistency

- [x] Use first person for my actions and findings; neutral language is appropriate for equipment, command output and technical facts. Remove third-person descriptions of my work such as "the operator" and "the user". **Verified on the four README files, portfolio overview and two main lab investigation documents; the additional case studies reviewed were also first-person.**
- [x] Confirm that each README and the portfolio overview describe the same current project status. Separate completed checks from pending tests and inferred explanations. **Verified in the four entry READMEs and central overview.**
- [x] Make the status of the VirtualBox compatibility report explicit: **submitted November 16** as [my November 16 contribution to VirtualBox issue #972](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139); root cause unresolved and complete log not attached.

**Done when:** All four README files and the central portfolio entry agree on key findings and unfinished work; a textual pass finds no third-person author references.

### 2. Navigation and readability

- [x] Give the main lab README a concise current-status summary and keep detailed diagnostics in the technical worksheet/history. **Revised and re-fetched main README.**
- [x] Maintain one linked portfolio project index and one audit tracker; eliminate unnecessary repeated project summaries. **Central overview, project index and roadmap link to this tracker; lab README repeated network details reduced.**
- [x] Ensure all internal Markdown references resolve to existing files and distinguish an actual result from a roadmap item. **November 16: checked 74 relative file links and 51 links into the four repositories across 19 Markdown documents; all targets exist, including all ten image references. Planned milestones remain explicitly pending. External sites, section anchors and GitHub-rendered layout are outside this file-target check.**

**Done when:** Navigation links are verified and a reader can locate the evidence, result, unresolved question and next step from the repository entry page.

### 3. Evidence provenance and coverage

- [x] Inventory existing screenshots versus statements that currently rely on reviewed but unpublished command output or screenshots. **See the [evidence coverage inventory](portfolio-evidence-inventory-2026-11-15.md); gaps remain open for remediation.**
- [ ] Add only selected, sanitized artifacts when genuinely available; do not generate substitute screenshots or treat a transcribed observation as an archived file.
- [ ] For VirtualBox, do not claim successful guest-to-guest connectivity; VM stability remains unresolved. Preserve the existing snapshots and disk chains.
- [ ] For Pi-hole, preserve the distinction between blocked DNS requests, application telemetry hypotheses, and proof of network connections or compromise. Device-identity attribution from the October router test remains unverified.
- [ ] For OctoPi, retain the retrospective label; historical logs and configurations are unavailable.

**Done when:** Each major factual claim can be traced to a visible artifact, a documented operator observation explicitly identified as such, or a clearly marked limitation.

### 4. Privacy review of already-published images and future artifacts

- [x] Review **all ten current published image files** for visual readability and visible privacy issues. Four Pi-hole screenshots and five privacy-redacted WSL2 screenshots were inspected against current Git blob SHA-1 values; the WSL2 replacements were committed on November 16 (`3a909c31a17892e01b6e2036bbe1d23787791eac`). The earlier VirtualBox cover was inaccessible for exact visual inspection, so I replaced it with the previously reviewed PNG on November 16 and verified the current Git blob matches that image (`7dc57a886e3426a76486236d80158d17b5b84733`). Older versions remain in Git history.
- [x] Replace the five WSL2 images containing the local user identifier with opaque-redacted versions at the **same public GitHub paths**, verifying each new image blob SHA-1. Commands and technical output preserved. **Older images are still reachable through Git history; this was not a history rewrite.**
- [ ] Review the VirtualBox log before any upstream attachment. Do not upload unsanitized VM logs, packet captures or private keys.
- [x] Complete a scoped current-file credential/privacy review. **November 16:** pattern scans and contextual review of all 19 tracked Markdown files found no obvious credentials, private-key bodies, recognized token strings, email addresses, raw MAC addresses or user-specific home paths. Public professional identity and diagnostic lab/WSL/resolver addresses remain intentionally documented. The earlier exact-blob review covered all ten current images. **This is not a guarantee of absence, a scan of Git history, or a review of issues, releases and other GitHub surfaces. Historical images remain recoverable.**

**Done when:** Every published image is inspected and any findings are remediated; records accurately state what was and was not checked.

### 5. Consistent AI-writing and documentation disclosure

- [x] Standardize existing writing-assistance notes to brief first-person descriptions without overstating independent validation. **Verified identical revised notes in three existing case studies (one VirtualBox-lab repository, two Pi-hole).**
- [ ] Ensure commands, results, technical claims and event timestamps come from actual observations; identify interpretations and unverified hypotheses.
- [ ] Keep the public reports written in my voice. Documentation assistance is not a substitute for personal understanding or ability to reproduce the steps.

**Done when:** Applicable existing case studies use a consistent, accurate disclosure and no claim of testing or review is added without evidence.

### 6. Cross-repository technical and presentation verification

- [x] Recheck the four repository entry pages, project index, roadmap, technical links, and known outstanding questions after corrections. **November 16:** desktop GitHub render spot checks covered the four READMEs, overview, index and roadmap; file-target links were checked in the prior pass. Repository metadata inconsistency remains explicitly open below.
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

## Open presentation finding — repository metadata

- [ ] Update the VirtualBox repository's **About description**. The rendered page still says `VirtualBox cybersecurity lab with Windows 10/11, Kali Linux, and isolated networking`, which does not match the documented guest inventory or the NAT boundary.
- Proposed replacement: **VirtualBox cybersecurity lab with Windows 10 and Kali Linux guests, NAT plus internal networking, and documented troubleshooting.**
- This is repository metadata, not README text. File-edit access cannot change it, and the review browser was signed out. No metadata change was made; the finding remains open.

## November 16 current-file review boundaries

The text review covered the 19 tracked Markdown files in the four repositories. Targeted patterns covered credential assignments, common token formats, private-key headers, emails, MAC addresses and user-specific home paths; matching security-related prose was reviewed in context. No obvious secret or unintended personal identifier was found. Hostname `home-dns`, public professional links and diagnostic addresses remain published context, not erased identifiers.

Desktop rendering was spot-checked on the four repository entry pages, central overview, project index and roadmap. The lab topology, WSL command blocks/sample redacted image and the main tables were readable in the inspected views. The Pi-hole DNS diagram rendered too small horizontally; changing only `flowchart LR` to `flowchart TB` improved label readability, confirmed on the live page after publication. This was not an exhaustive mobile, accessibility or every-image-at-every-size check. Existing cropped-source-image limitations remain recorded in the evidence inventory.

## Starting baseline

- The initial audit found **four** public repositories and **16** Markdown documents. The internal Markdown links checked mapped to existing project files.
- The initial text audit identified no obvious published plaintext passwords or private key bodies. **This is not a visual screenshot audit.**
- At audit start there were **nine** public technical screenshots to review: five in the WSL2 baseline repository and four in the Pi-hole repository, plus the main lab's **one cover image**. Three Pi-hole screenshots (`02-top-clients.png`, `03-filtered-query-log.png`, `04-router-client.png`) were recovered from a local archive, matched **exactly** to the published Git blobs (SHA-1), and visually inspected: displayed client labels are anonymized and the router MAC is redacted; no obvious credential or personal identifier is visible in those three. **An earlier local archive's `01-dashboard.png` did not match the published blob; a subsequent direct user upload DID match exactly** (`b1e82233b0389ec30c01ba18919d104551920354`, 115,705 bytes). Its visible totals and privacy were reviewed. All five WSL2 screenshots now exactly match the uploaded full repository ZIP's Git hashes, and each has been visually reviewed. All five visibly contain a local username; none contained EXIF metadata or a visible password/private key/token. The Pi-hole dashboard passed direct visual inspection. An uploaded VirtualBox cover was also reviewed, but the image does not match the exact public GitHub blob (uploaded 1,951,336 bytes vs public 1,714,201 bytes). Its actual published version remains unverified. At this November 15 starting baseline, account-name remediation for WSL2 was pending; the **five current WSL2 paths were replaced and verified November 16**, while historical Git revisions still contain the originals.
- The VirtualBox guest-to-guest test, a sanitized full `VBox.log` attachment, and several Pi-hole corroborating captures remain pending.
- At the November 15 starting baseline, the VirtualBox issue report was saved in the lab repo and had not yet been posted upstream. The November 16 submission is recorded below.

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
| 2026-11-16 | Diagnosed and restored Docker memory accounting on Pi | Verified `cgroup_disable=memory` in effective boot arguments, absent memory controller, backed-up single-line boot override `cgroup_enable=memory`, and reboot; post-reboot cgroup controllers include memory; Docker stats show 16.92 MiB agent, 36.03 MiB hub, 200.6 MiB Kuma | Kernel and Docker memory accounting repaired; refreshed Beszel dashboard remains to be checked |
| 2026-11-16 | Verified native DNS services after Pi reboot | `systemctl is-active pihole-FTL unbound` returned two `active` results; direct `dig` queries to Pi-hole at 127.0.0.1:53 and Unbound at 127.0.0.1:5335 both returned A records for example.com | Local Pi-hole and Unbound recovery verified; does not prove every client path or continuous availability |
| 2026-11-16 | Confirmed Beszel end-to-end metrics after cgroup repair | Post-reboot dashboard showed `home-dns` Up and populated Docker CPU, memory (~260 MB total across displayed series), network I/O, root disk/I/O, host bandwidth, load, thermal and Wi-Fi charts | Monitoring fix validated visually; raw screenshots not committed because a private Wi-Fi network identifier must be redacted before public publication |

| 2026-11-16 | Privacy-hardened all five current WSL2 evidence images | Exact original Git blobs matched uploaded ZIP; redacted account labels in five JPEGs; GitHub commit `3a909c31a17892e01b6e2036bbe1d23787791eac`; all five replacement Git blobs matched local generated hashes and were re-fetched in current tree | **Current WSL2 image-path remediation verified.** Historical originals remain in Git history |
| 2026-11-16 | Replaced the uninspectable earlier VirtualBox cover with reviewed PNG, then verified Git blob SHA | [Replacement commit](https://github.com/bemerson24/cybersecurity-virtual-lab-environment/commit/7dc57a886e3426a76486236d80158d17b5b84733); current tree `assets/virtual-lab-cover.png` SHA-1 `df2eae99d8931af5fb06c5bc8ea82192cda31ccd`, 1,951,336 bytes, matching previously inspected upload | **10/10 current public image files now reviewed and byte-matched.** Historical unmatched blob was not inspected and remains in earlier Git history; final navigation and technical-claim review still pending |

| 2026-11-16 | Reconciled VirtualBox submission status across eight portfolio documents and corrected an unrelated cover-status note in the WSL2 inventory row | Read the live [upstream comment](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139) by `bemerson24`, posted November 16 at 09:54 PST; independently downloaded the current cover and verified blob `df2eae99d8931af5fb06c5bc8ea82192cda31ccd`, 1,951,336 bytes, no PNG info metadata | Submission complete; awaiting maintainer feedback. Root cause unresolved, full log not attached. Cover review was already complete; no image replacement or lab changes repeated. All 55 relative file links in this repository resolve; cross-repository and rendered-layout checks remain open |

| 2026-11-16 | Reviewed cross-repository navigation and current claim summaries; reconciled monitoring status and expanded evidence inventory | All 125 relative/cross-repository file and repository links resolve across 19 Markdown documents; all ten image references have files; code fences are paired. Compared the four READMEs, overview, index and roadmap against linked case-study status/limits | Moved completed monitoring checks out of P03 open work; corrected monitoring table date and historical pending wording; labeled P08 as a published write-up, not a published raw capture; added missing laptop-portability and monitoring inventory rows. Actual GitHub rendering, external-site availability and comprehensive historical secret review remain outside this pass |

| 2026-11-16 | Completed scoped current-text privacy review and desktop rendering spot checks; improved DNS diagram | Reviewed 19 tracked Markdown files and live GitHub views for the four READMEs, overview, index and roadmap; Pi-hole diagram commit `6a8ba313e88564e7c98e802608ffae4bbcce0236` re-fetched exactly and inspected after rendering | No obvious current-text credential exposure found; vertical DNS diagram labels readable. VirtualBox About metadata remains open with replacement wording above; historical content and exhaustive display/accessibility testing excluded |

I will update this record only after verifying each meaningful correction. This tracker is a record of portfolio maintenance, not evidence that the underlying systems were tested again.
