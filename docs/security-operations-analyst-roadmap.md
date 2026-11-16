# Security Operations Project Roadmap

**Status:** Published milestones and pending technical extensions

This roadmap tracks longer-term technical deliverables. **My immediate priority is the [portfolio audit remediation checklist](portfolio-audit-remediation-2026-11-15.md)** across existing repositories. I will complete the documentation, evidence and privacy checks first, and then conclude that audit with one controlled security-event investigation. Other milestones below remain plans until their outputs have been documented and verified.

## Current evidence

- [Linux baseline assessment](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, listening sockets, services, logs and DNS/HTTPS checks.
- [Pi-hole investigations](https://github.com/bemerson24/raspberry-pi-pihole): DNS observations, VPN comparisons and HTTPS dashboard recovery, with unresolved causes identified.
- [Endpoint TCP/TLS analysis](tcp-tls-session-analysis-2026-11-03.md): published November 3; TCP handshake, per-connection TLS parameters and HTTP response observations.
- [VirtualBox environment](../README.md): Windows 10 and Kali Linux guests on a Windows 11 host; all eight GUI adapter settings recorded November 15 (NAT plus `soc-lab` for each guest); Kali addresses/routes and both MAC-to-adapter mappings verified (`eth0` = Adapter 1/NAT; `eth1` = Adapter 2/`soc-lab`); Windows 10 NAT address observed and internal `Ethernet 2` changed from APIPA to `172.20.20.20/24`, confirmed by `ipconfig`; updated `172.20.20.0/24` on-link route and unchanged NAT default route verified; guest-to-guest testing pending.

- [VirtualBox NEM/WHPX performance investigation](virtualbox-nem-whpx-issue-report-2026-11-15.md): documented version/build, log evidence and recovery observations, with root cause unresolved and no upstream comment submitted.

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
- [ ] Publish a Windows event-log investigation (final milestone of the current audit plan: a controlled, benign security event with evidence-supported triage and disposition).
- [ ] Publish a PowerShell collection or parsing script.
- [ ] Publish a SIEM/KQL investigation.
- [ ] Publish endpoint/identity and phishing case studies.
- [ ] Publish an incident-response runbook.

