# Portfolio Project Index and Backlog

**Last reviewed: October 30, 2026**

A working index of published projects, open investigations and ideas worth keeping. This is my engineering journal and planning record. An indexed idea is not a completed project or a commitment to start it immediately.

[Portfolio overview](../PORTFOLIO-OVERVIEW.md) · [SOC learning roadmap](security-operations-analyst-roadmap.md)

## Published work and open follow-ups

| ID | Project or update | Current status | Next step |
|---|---|---|---|
| P01 | [VirtualBox cybersecurity lab](../README.md) | Windows 10, Windows 11 and Kali setup documented; validation evidence pending | Complete the [network validation worksheet](lab-network-validation.md), including enabled adapters and connectivity results |
| P02 | [Ubuntu WSL 2 security baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline) | Introductory assessment published with commands and five screenshots | Capture a repeatable baseline report; investigate unresolved warnings before claiming a cause |
| P03 | [Pi-hole DNS filtering](https://github.com/bemerson24/raspberry-pi-pihole) | Deployed; ongoing documentation | Record versions and sanitized configuration/evidence |
| P04 | [Smart-TV DNS investigation](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/smart-tv-dns-investigation-2026-10-15.md) | Published October 15 investigation and October 22–23 follow-up; attribution and measurement questions remain | Verify target device identity privately and collect matched per-client observations |
| P05 | [Laptop DNS portability and VPN troubleshooting](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/laptop-dns-portability-vpn-2026-10-29.md) | October 29 case study published; VPN recovery recorded; campus DNS hypothesis open | Record configured resolver privately, then compare home/campus access and VPN states separately |
| P06 | [OctoPi printer management](https://github.com/bemerson24/raspberry-pi-octopi) | Retrospective documentation of 2020–2024 work | Add original evidence if recovered; keep original work dates separate from documentation dates |

## Recent additions to preserve

| ID | Item | Status and intended home | Next evidence or action |
|---|---|---|---|
| B01 | TCP port analysis using Wireshark and tcpdump in WSL | Coursework workflow selected; portfolio results not yet published. Keep with virtual-lab/network-analysis notes | Record commands, observed client/server ports and interpretation from the actual capture; publish only material permitted for reuse |
| B02 | Steganography analysis in a Windows VM | Proposed lab extension; no completed results indexed. Intended path: `labs/steganography-analysis/` in this repository | Record image properties, embedding/extraction verification and strings observations after performing the exercise |
| B03 | Snort DNS detection extension | Discussed next step building on Pi-hole; no validated rule or test output published | Define an authorized lab scenario, sensor placement, benign test traffic and expected alerts; distinguish noisy DNS from evidence of tunneling |
| B04 | Python security-log parser / Log-Parser-Automation | Proposed, not implemented | Start with sanitized or synthetic logs; document parsing, useful summaries, malformed inputs and sample output |
| B05 | SOC incident casebook | Proposed collection of investigation timelines and decisions | Reuse the existing DNS cases as links; add a concise case template before creating duplicate reports |
| B06 | Local/remote junior SOC job-requirements research | Research requested; no source-backed dataset published here | Record employer, title, source URL, posting/capture date, required/preferred skills, pay, arrangement, location, shift/on-call and benefits when stated; mark missing fields and closed postings |
| B07 | Laptop endpoint-hardening documentation | Related configuration work discussed; no dedicated report in these repositories | Verify current configuration, collect sanitized evidence and keep Windows host findings separate from WSL and VM findings |

### How job research informs the portfolio

Use recurring requirements from verified job postings to select useful lab work. Map each requirement to existing evidence, an evidence gap or a later milestone. Preserve stated salary and work arrangements rather than estimating them. This index records the research project; it does not claim that a scraper or current dataset has been built.

## Physical lab and capstone milestones

The portable physical cybersecurity lab is a planned capstone direction. The household Pi-hole is existing infrastructure and remains separate from the three-Pi lab until an integration is actually built and tested.

| ID | Milestone | Status | Completion evidence |
|---|---|---|---|
| C01 | Physical inventory and network design | Hardware acquired; build/validation pending | Verified inventory, device roles and scoped topology |
| C02 | Segmentation and DNS visibility | Planned | Configuration and documented allowed/blocked connectivity tests |
| C03 | Detection and logging | Planned | Validated Snort observations, Python analysis and centralized logging as implemented |
| C04 | Windows event logs, PowerShell and SIEM/KQL | Planned; details in the SOC roadmap | Reproducible benign scenarios, queries and explained results |
| C05 | Home-system integration | Future direction: NAS, home automation, cameras/security devices, gaming and media systems | Inventory and data-flow design first; document each implemented connection separately |
| C06 | End-to-end capstone demonstration | Future milestone | Architecture, scenario, evidence timeline, investigation, response and lessons learned |

## Related maker and home-system ideas

These are idea records rather than completed cybersecurity work. Create separate project documentation when the work begins.

- **Console revival and physical-media inventory:** existing modded Wii, PS4 setup/profile preparation and original fat PS3 revival. Inventory owned equipment and condition before purchases. A possible PS Vita remains a future watchlist item.
- **NAS and media collection:** OpenMediaVault direction, backups and a physical-media catalog; preserve the shared comedy/movie-collection idea as part of inventory planning.
- **Home automation and cameras:** future Home Assistant, blinds and camera/security integration; evaluate network and access boundaries as each system is implemented.
- **Steampunk laptop:** original 3D-printed design idea using Datamancers as an aesthetic reference. Concept only.
- **3D-printer maintenance:** Bambu P1S squeak troubleshooting and other repairs can become maker troubleshooting notes when actual cause, action and verification are recorded.

## Maintenance rules

- Keep a stable ID when an idea becomes a lab or moves into another repository.
- Update its status and link the actual artifact rather than copying the same write-up into multiple places.
- Record observed results separately from working hypotheses and proposed tests.
- Do not upload household identifiers, credentials, private account incidents or unapproved course materials.
- Review evidence milestones monthly; capture ideas when they arise. LinkedIn updates are a separate editorial decision.
- Certifications belong in the accomplishments record only after they are earned.

## Index change log

- **October 30, 2026:** Checked the four existing repositories; indexed the published October 29 DNS/VPN case study, recent coursework extensions, job-requirements research, detection/automation ideas and future capstone/home-system milestones. Planned items remain marked as planned.
