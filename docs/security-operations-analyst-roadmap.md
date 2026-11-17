# Security Operations Project Roadmap

**Status:** Published milestones, verified PowerShell collector, and pending technical extensions

This roadmap separates verified deliverables from planned work. The read-only PowerShell event timeline collector has been saved, tested on the source Windows host and published; its associated naturally occurring event case study remains private pending review. A separate controlled security-event investigation and VM connectivity checks are still outstanding. Other milestones remain plans until their outputs have been documented and verified.

## Current evidence

- [Linux baseline assessment](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, listening sockets, services, logs and DNS/HTTPS checks.
- [Pi-hole investigations](https://github.com/bemerson24/raspberry-pi-pihole): DNS observations, VPN comparisons and HTTPS dashboard recovery, with unresolved causes identified.
- [Endpoint TCP/TLS analysis](tcp-tls-session-analysis-2026-11-03.md): published November 3; TCP handshake, per-connection TLS parameters and HTTP response observations.
- [VirtualBox environment](../README.md): Windows 10 and Kali Linux guests on a Windows 11 host; all eight GUI adapter settings recorded November 15 (NAT plus `soc-lab` for each guest); Kali addresses/routes and both MAC-to-adapter mappings verified (`eth0` = Adapter 1/NAT; `eth1` = Adapter 2/`soc-lab`); Windows 10 NAT address observed and internal `Ethernet 2` changed from APIPA to `172.20.20.20/24`, confirmed by `ipconfig`; updated `172.20.20.0/24` on-link route and unchanged NAT default route verified; guest-to-guest testing pending.

- [Read-only PowerShell event timeline collector](powershell-event-timeline-collector.md): tested Windows PowerShell 5.1 function for IDs 400/403/4104, with a known-event query, empty window, input rejection, simulated access-denial test and a verified packaged-script run; cross-host testing pending.
- [VirtualBox NEM/WHPX performance investigation](virtualbox-nem-whpx-issue-report-2026-11-15.md): documented version/build, log evidence and recovery observations, with root cause unresolved; [my November 16 contribution to VirtualBox issue #972](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139) is published and awaiting maintainer feedback.

These results concern my personal endpoints and lab environments. They do not represent production SOC operations.

## Planned milestones

| Milestone | Deliverable | Acceptance criteria |
|---|---|---|
| Virtual lab network validation | Adapter inventory, scoped topology and connectivity results | Every enabled guest adapter recorded; expected and observed connectivity compared once guest stability permits |
| Windows event-log investigation | Sanitized events and an investigation timeline | Event sources, timestamps and identifiers support the stated conclusion; alternative explanations documented |
| PowerShell collection | Read-only collection or parsing script | Documented inputs, error handling and reproducible sample output |
| SIEM/KQL investigation | Queries against identified sample or lab data | Queries run against the stated dataset; findings, field assumptions and false-positive considerations explained |
| Endpoint and identity investigation | Benign scenario or public-data case study | Evidence sources correlated; findings separated from hypotheses; escalation and response rationale documented |
| Email and phishing analysis | Header/URL analysis and triage checklist | Safe sample handling, evidence references and clear disposition rationale |
| Incident-response documentation | Triage checklist, evidence log, runbook and remediation tracker | Decision points, approval boundaries and recovery verification defined |

## Status

- [x] Publish the Linux baseline assessment.
- [x] Publish DNS/VPN and HTTPS troubleshooting case studies.
- [x] Publish the November 3 endpoint Wireshark investigation.
- [ ] Complete virtual-lab adapter and connectivity validation.
- [ ] Publish a controlled Windows event-log investigation using benign activity, actual event evidence, competing explanations and a documented triage/disposition.
- [x] Publish a read-only PowerShell collection/parsing script, with documented inputs, simulated error-path testing, reproducible event counts and a packaged-file validation on the source host.
- [ ] Publish a SIEM/KQL investigation.
- [ ] Publish endpoint/identity and phishing case studies.
- [ ] Publish an incident-response runbook.

