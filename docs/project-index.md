# Portfolio Project Index

Published projects, documented results and open technical questions.

[Portfolio overview](../PORTFOLIO-OVERVIEW.md) · [Security operations roadmap](security-operations-analyst-roadmap.md)

## Projects and investigations

| ID | Project or update | Current status | Open work |
|---|---|---|---|
| P01 | [VirtualBox cybersecurity lab](../README.md) | Windows 10 and Kali setup documented; validation evidence pending | Complete the [network validation worksheet](lab-network-validation.md), including enabled adapters and connectivity results |
| P02 | [Ubuntu WSL 2 security baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline) | Scoped assessment published with commands and five screenshots | Repeatable baseline capture and investigation of unresolved warnings |
| P03 | [Pi-hole DNS filtering](https://github.com/bemerson24/raspberry-pi-pihole) | Deployed; ongoing documentation | Record versions and sanitized configuration/evidence |
| P04 | [Smart-TV DNS investigation](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/smart-tv-dns-investigation-2026-10-15.md) | Published October 15 investigation and October 22–23 follow-up; attribution and measurement questions remain | Verify target device identity privately and collect matched per-client observations |
| P05 | [Laptop DNS portability and VPN troubleshooting](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/laptop-dns-portability-vpn-2026-10-29.md) | October 29 VPN recovery documented; November 2–3 follow-ups linked; original DNS hypothesis unconfirmed | Recurrence testing informed by P08's browser comparison; common cause across episodes unconfirmed |
| P06 | [OctoPi printer management](https://github.com/bemerson24/raspberry-pi-octopi) | Retrospective documentation of 2020–2024 work | Original configuration exports, screenshots and logs are not included |
| P07 | [Pi-hole HTTPS and VPN DNS troubleshooting](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/pihole-https-vpn-dns-2026-11-02.md) | November 2 case study published; HTTPS dashboard access restored and local DNS behavior compared with VPN on/off | Validate VPN/local DNS coexistence; capture campus tests during a recurrence |
| P08 | [TCP/TLS Session Analysis — November 3, 2026](tcp-tls-session-analysis-2026-11-03.md) | November 3 endpoint capture published: complete TCP handshake, TLS 1.3 comparison and HTTP cookie-attribute observations; Firefox issue unresolved | Firefox connectivity cause remains unresolved; raw captures are not public |

## Technical roadmap

The [Security Operations Project Roadmap](security-operations-analyst-roadmap.md) lists upcoming technical deliverables and their acceptance criteria, starting with virtual-lab network validation. Pending projects are identified separately from published results.
