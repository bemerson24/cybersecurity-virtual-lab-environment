# Cybersecurity & Infrastructure Portfolio

I document hands-on projects and investigations involving Linux, Windows, virtualization, networking, DNS, and security troubleshooting. My background includes commercial software support, public utilities, and municipal government, with work involving operational systems, account and billing workflows, exception resolution, and process improvement. Across those roles and my technical projects, I focus on verifying what happened, preserving evidence, and communicating what I can actually support.

**Career focus:** entry-level IT/security support, security operations and infrastructure-support roles where careful investigation, reliable operations and clear documentation matter.

- **GitHub profile:** [bemerson24](https://github.com/bemerson24)
- **Professional profile:** [LinkedIn](https://www.linkedin.com/in/brianemersonpdx/)

**Project index:** [Published projects and open investigations](docs/project-index.md) — case studies and technical status.

**Current focus:** Evidence quality, privacy, technical accuracy and reproducible security investigations. I have published a [read-only PowerShell event timeline collector](docs/powershell-event-timeline-collector.md) with a documented Windows 11 test matrix; the separate controlled security-event investigation remains a planned milestone.

## Technical domains

- **Network security:** virtual networking, packet analysis and connectivity validation.
- **System security:** Linux access controls, security baselines and system diagnostics.
- **Infrastructure monitoring:** DNS security, availability checks and container metrics.
- **Systems administration:** Linux, virtualization, Docker and Raspberry Pi deployments.

## How the projects connect to security operations

These projects use different environments, but I approach them with the same workflow: **establish a baseline → observe system or network behavior → test a hypothesis → document findings and limitations**.

| Technical area | Current evidence | Boundary or next step |
|---|---|---|
| Endpoint and system fundamentals | [Ubuntu WSL 2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, services and journal review; [Windows PowerShell event timeline collector](docs/powershell-event-timeline-collector.md): process/time-filtered event IDs 400/403/4104 and validated failure handling | Windows event triage report remains private; controlled investigation and cross-host tool validation are future work |
| Network visibility and investigation | [Pi-hole DNS case studies](https://github.com/bemerson24/raspberry-pi-pihole): DNS observations, VPN troubleshooting and [WSL2/Windows DNS path comparison](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/wsl2-bitdefender-pihole-dns-2026-11-15.md); [endpoint TCP/TLS capture](docs/tcp-tls-session-analysis-2026-11-03.md): TCP handshake and TLS 1.3 negotiation | Packet capture is endpoint-level, not a campus infrastructure assessment; Firefox's earlier issue remains unresolved |
| Controlled testing environment | [Current Windows 11 / Kali CyberLab](docs/windows11-kali-cyberlab-validation-2026-11-19.md): the Windows 10 guest was superseded as the primary test VM; Windows 11 and Kali exchanged successful ICMP replies in both directions on `192.168.77.0/24` with NAT disabled | IPv6 and broader network isolation still need testing; the [earlier Windows 10 performance investigation](docs/virtualbox-nem-whpx-issue-report-2026-11-15.md) remains documented but is not the current validated lab |
| Infrastructure experience and availability | [Pi-hole monitoring extension](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/docker-uptime-kuma-beszel-monitoring-2026-11-15.md): Docker/Compose, Uptime Kuma availability checks, backup integrity and storage optimization; [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi): historical Raspberry Pi administration | Uptime Kuma checks are availability monitoring, not security alerts; Beszel Agent now reports post-reboot Docker CPU/memory/network and host disk, thermal and Wi-Fi metrics after a verified cgroup memory repair; four sanitized Beszel screenshots are now published; an earlier three-monitor [Uptime Kuma screenshot](https://github.com/bemerson24/raspberry-pi-pihole/tree/main/evidence/uptime-kuma) is now published; the separately observed four-monitor post-migration screenshot remains unarchived; all four monitors were recorded Up in that November 16 session |

For verified results and unresolved questions, see the [project index](docs/project-index.md). The [longer-term SOC roadmap](docs/security-operations-analyst-roadmap.md) separately identifies planned work that has not been completed.

## Featured projects

### 1. [Cybersecurity Virtual Lab Environment](https://github.com/bemerson24/cybersecurity-virtual-lab-environment)
**Status: In progress — Windows 11 / Kali operational baseline verified November 19, 2026.** After persistent performance problems with the original Windows 10 guest, I shifted the primary lab to a Windows 11 Enterprise Evaluation VM alongside Kali Linux. I verified desktop boot, Guest Additions display resizing, NAT connectivity, and bidirectional ICMP communication on the internal `CyberLab` network (`192.168.77.10/24` Windows; `192.168.77.20/24` Kali). The verified ping tests were repeated with NAT disabled and no IPv4 default route observed on either guest. This does not yet prove complete isolation, including IPv6. [Read the Windows 11 / Kali validation](docs/windows11-kali-cyberlab-validation-2026-11-19.md). The original Windows 10 / Kali `soc-lab` setup is preserved as historical troubleshooting, including the [VirtualBox NEM/WHPX report](docs/virtualbox-nem-whpx-issue-report-2026-11-15.md) and [November 16 upstream issue contribution](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139); its root cause remains unresolved.

**Focus:** virtualization, Windows/Linux environments, networking fundamentals and technical documentation.

### 2. [Linux Security Baseline Assessment — Ubuntu on WSL 2](https://github.com/bemerson24/ubuntu-wsl2-security-baseline)
**Status: Assessment documented.** A scoped review covering account privileges, file permissions, processes, listening sockets, system logs, DNS resolution and HTTPS connectivity. The README includes screenshots and distinguishes observed results from unresolved warnings.

**Focus:** Linux administration, permissions, systemd, log review and DNS/HTTPS diagnostics.

### 3. [Raspberry Pi — Pi-hole Project](https://github.com/bemerson24/raspberry-pi-pihole)
**Status: Ongoing.** My Raspberry Pi 400 provides native Pi-hole and Unbound DNS services. Alongside DNS and VPN troubleshooting, I added [Docker-based Uptime Kuma and Beszel monitoring](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/docker-uptime-kuma-beszel-monitoring-2026-11-15.md) on November 15: three availability checks were Up in the observed dashboard, a monitoring-data backup passed integrity and cross-device checksum verification, and the smaller Uptime Kuma image freed SD-card space. On November 16 I connected the Beszel Agent, traced missing Docker memory metrics to a disabled kernel memory cgroup controller, made a backed-up boot override, and verified the repair after reboot with Docker stats and newly populated Beszel Docker CPU/memory/network charts. The root I/O, temperature and Wi-Fi panels also reported data; native Pi-hole/Unbound local DNS checks passed. The post-migration Uptime Kuma dashboard showed all four displayed monitors Up. Four sanitized [Beszel evidence screenshots](https://github.com/bemerson24/raspberry-pi-pihole/tree/main/evidence/beszel) are now public; an earlier [three-monitor Uptime Kuma image](https://github.com/bemerson24/raspberry-pi-pihole/tree/main/evidence/uptime-kuma) is public, while the four-monitor post-migration capture remains unarchived; alert delivery and long-term uptime remain untested.

**Focus:** DNS and network diagnostics, Linux/Docker service operations, availability monitoring, backup validation, capacity management and evidence-based troubleshooting.

### 4. [Raspberry Pi 400 — OctoPi 3D Printer Management](https://github.com/bemerson24/raspberry-pi-octopi)
**Status: Retrospective project (2020–2024).** Documentation of a Raspberry Pi 400 setup used to manage a Creality CR-10S and Snapmaker A350, including print management, camera monitoring and hardware/software integration.

**Focus:** Raspberry Pi, system setup, hardware/software integration and practical troubleshooting.

## Transferable professional experience

### Commercial software client support

**Columbia Ultimate · February 2016–April 2017**

I advanced from **Associate Client Support Specialist (Tier 1)** to **Client Support Specialist (Tier 2)** in **August 2016**.

I supported **CUBS (Columbia Ultimate Business System)**, the company's debt-collection and reporting software. I troubleshot reported problems, reproduced issues, investigated database-related questions, assisted with application configuration, and escalated unresolved cases.

I also provided remote support for legacy mainframe workflows, including attempts to configure dot-matrix printers. I documented the tests and escalated what I couldn't resolve.

### Public utilities and municipal operations

At Clark Public Utilities, I progressed through **Customer Service Representative (CSR)**, **CSR II**, and **Senior CSR / Supervisor** roles, taking on more responsibility for utility operations, customer/account workflows, problem resolution, and team support.

My public-utility and municipal work also involved business systems, utility billing, revenue recovery, investigating exceptions, documenting findings and procedures, and improving operational processes.

Those roles strengthened my troubleshooting, recordkeeping, communication, and process-improvement skills.

## Evidence and scope

I document the environment, procedures, observations, and limitations for each project. Laboratory exercises, retrospective accounts and planned work are distinguished from verified operational findings and professional employment.
