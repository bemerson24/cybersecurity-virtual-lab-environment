# Evidence Coverage Inventory — November 15, 2026

**Purpose:** I am auditing **existing projects only**, without fabricating evidence or adding new portfolio projects. Publication of raw logs, PCAPs, client identities or private network information is not required to demonstrate a result. Where I cannot publish an original artifact, I distinguish the privately reviewed observation from an independently accessible public artifact.

[Return to audit remediation tracker](portfolio-audit-remediation-2026-11-15.md) · [Portfolio project index](project-index.md)

| Repository / investigation | Public evidence already available | Evidence or verification still needed | Accuracy boundary |
| --- | --- | --- | --- |
| [Ubuntu WSL2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline) | Five linked JPEG screenshots plus the documented command/observation sequence | **Visual privacy and legibility review of all five currently published screenshots**; optional repeat baseline later | A scoped WSL2 baseline, not a production vulnerability assessment or Windows host audit |
| [Pi-hole smart-TV DNS investigation](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/smart-tv-dns-investigation-2026-10-15.md) | Four November 11 screenshots: dashboard, top clients, filtered query log, router client row; documented DNS-query counts/timestamps | **Public dashboard image still needs direct visual review**; October router-isolation target/device identity not independently established | DNS requests and blocking percentages do not prove an outbound connection or malicious activity |
| [Pi-hole HTTPS/VPN DNS study](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/pihole-https-vpn-dns-2026-11-02.md) | Commands, VPN-state comparison tables and observations | Matched A/B/A Windows terminal and Pi-hole-side screenshots not yet published; any future packet-level attribution requires new authorized data | VPN-state correlation is not a complete explanation of the routing/filtering mechanism |
| [Pi-hole Windows/WSL2 resolver comparison](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/wsl2-bitdefender-pihole-dns-2026-11-15.md) | Commands, unique-name tests and test-state observations transcribed in the case study | Original working-session screenshots were reviewed but **are not in the public repository**; packet-level attribution unverified | Successful name resolution is not proof of which DNS server handled an automatic query |
| [VirtualBox environment](../README.md) | Adapter inventory, guest IP/route observations, topology diagram, dated event-log correlation and [technical worksheet](lab-network-validation.md) | Guest-to-guest test deferred during VM instability; adapter screenshots reviewed earlier but not yet published in sanitized form | **Internal network configured** is not **guest connectivity proven**; NAT means the lab is not completely isolated |
| [VirtualBox NEM/WHPX issue report](virtualbox-nem-whpx-issue-report-2026-11-15.md) | Version/build, selected log lines, 244.381-second time-manager event and graceful recovery sequence | Complete original `VBox.log` not published or privacy-reviewed for upstream attachment; guest OS build/Guest Additions details unverified | The specific root cause is **unresolved**; issue report is stored here, not submitted upstream |
| [TCP/TLS endpoint analysis](tcp-tls-session-analysis-2026-11-03.md) | Documented endpoint-session observations and controlled connection results | Raw captures intentionally private; any published frame screenshots should be independently sanitized | End-user device capture, not a campus network assessment |
| [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi) | First-person retrospective README | Original configuration exports, historical logs and screenshots unavailable | Historical operations experience, not a newly performed security assessment |

## Visual asset review record

**Current public image inventory: 10 files** — five WSL2 screenshots, four Pi-hole screenshots and one VirtualBox cover image. This list tracks the public Git blobs, not similarly named local variants.

| Public image | Git blob verified? | Visual review | Outcome |
| --- | --- | --- | --- |
| `raspberry-pi-pihole/evidence/2026-11-11/02-top-clients.png` | Exact SHA-1 match to recovered local archive | Reviewed | Client labels shown as `Client A` and `Other client`; no obvious visible personal information or credential |
| `raspberry-pi-pihole/evidence/2026-11-11/03-filtered-query-log.png` | Exact SHA-1 match | Reviewed | Rows attribute queries to `Client A`, showing a public Amazon-associated telemetry hostname; no obvious visible personal identifier or credential |
| `raspberry-pi-pihole/evidence/2026-11-11/04-router-client.png` | Exact SHA-1 match | Reviewed | Device name `Client A`; MAC value explicitly redacted; no obvious visible credential |
| `raspberry-pi-pihole/evidence/2026-11-11/01-dashboard.png` | **Local archive does not match published blob** | Not yet | Exact published screenshot still needs review |
| `ubuntu-wsl2-security-baseline/screenshots/01-ubuntu-installed.jpg` | Public file listed | Not yet | Inspect published bytes |
| `ubuntu-wsl2-security-baseline/screenshots/02-file-permissions.jpg` | Public file listed | Not yet | Inspect published bytes |
| `ubuntu-wsl2-security-baseline/screenshots/03-network-listeners.jpg` | Public file listed | Not yet | Inspect published bytes |
| `ubuntu-wsl2-security-baseline/screenshots/04-warning-review.jpg` | Public file listed | Not yet | Inspect published bytes |
| `ubuntu-wsl2-security-baseline/screenshots/05-dns-https.jpg` | Public file listed | Not yet | Inspect published bytes |
| `cybersecurity-virtual-lab-environment/assets/virtual-lab-cover.png` | Public file listed | Not yet | Check branding, readability and privacy |

**Method:** The first three Pi-hole images were recovered from an earlier sanitized ZIP file. Their Git blob SHA-1 values exactly matched those returned for the public GitHub repository tree, so they correspond to the **published bytes**, not just screenshots that look similar. I inspected the displayed image content and identified the visible labels above. The local dashboard image had a different hash and size, so I **did not** treat it as evidence that the public dashboard was reviewed.

**Important limitation:** No automated text scan or GitHub filename inventory substitutes for direct inspection of the seven remaining public images. No binary image was modified or republished during this evidence review.

## Next evidence action

Complete visual review of the seven still-unchecked public images. If privacy or readability problems are found, produce and verify a new sanitized version **before** claiming the image is cleared. Update this inventory, then close the outstanding evidence and technical-consistency tasks in the [audit tracker](portfolio-audit-remediation-2026-11-15.md).
