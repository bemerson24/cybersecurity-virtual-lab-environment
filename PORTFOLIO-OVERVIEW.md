# Brian Emerson — Cybersecurity Portfolio

I document hands-on projects and investigations involving Linux, Windows, virtualization, networking, DNS, and security troubleshooting. My background includes commercial software support, public utilities, and municipal government, with work involving operational systems, account and billing workflows, exception resolution, and process improvement. Across those roles and my technical projects, I focus on verifying what happened, preserving evidence, and communicating what I can actually support.

**Career focus:** entry-level IT/security support, security operations and infrastructure-support roles where careful investigation, reliable operations and clear documentation matter.

- **GitHub profile:** [bemerson24](https://github.com/bemerson24)
- **Professional profile:** [LinkedIn](https://www.linkedin.com/in/brianemersonpdx/)

**Project index:** [Published projects and open investigations](docs/project-index.md) — case studies and technical status.

**Current focus:** I am completing the [portfolio audit remediation checklist](docs/portfolio-audit-remediation-2026-11-15.md) across my four existing repositories before adding new projects. I will finish that work with a documented, controlled security-event investigation.

## Cybersecurity community and professional development

I'm a Cybersecurity BAS student at Clark College and a member of its Cyber Club.

## How the projects connect to security operations

These projects use different environments, but I approach them with the same workflow: **establish a baseline → observe system or network behavior → test a hypothesis → document findings and limitations**.

| Technical area | Current evidence | Boundary or next step |
|---|---|---|
| Endpoint and system fundamentals | [Ubuntu WSL 2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, services and journal review | Linux-only assessment; Windows event investigation is future work |
| Network visibility and investigation | [Pi-hole DNS case studies](https://github.com/bemerson24/raspberry-pi-pihole): DNS observations, VPN troubleshooting and [WSL2/Windows DNS path comparison](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/wsl2-bitdefender-pihole-dns-2026-11-15.md); [endpoint TCP/TLS capture](docs/tcp-tls-session-analysis-2026-11-03.md): TCP handshake and TLS 1.3 negotiation | Packet capture is endpoint-level, not a campus infrastructure assessment; Firefox's earlier issue remains unresolved |
| Controlled testing environment | [VirtualBox lab](https://github.com/bemerson24/cybersecurity-virtual-lab-environment): Windows and Kali guests with NAT and internal `soc-lab`; [NEM/WHPX performance investigation](docs/virtualbox-nem-whpx-issue-report-2026-11-15.md) documents repeated stalls and a 244.381-second timing lag | Adapter configurations and guest addressing/routes verified; guest-to-guest connectivity and stability remain unresolved; full raw logs not shared |
| Infrastructure experience and availability | [Pi-hole monitoring extension](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/docker-uptime-kuma-beszel-monitoring-2026-11-15.md): Docker/Compose, Uptime Kuma availability checks, backup integrity and storage optimization; [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi): historical Raspberry Pi administration | Uptime Kuma checks are availability monitoring, not security alerts; Beszel Agent is connected with initial CPU metrics, while additional sensor charts and post-migration availability rechecks remain pending |

For verified results and unresolved questions, see the [project index](docs/project-index.md). My [audit remediation checklist](docs/portfolio-audit-remediation-2026-11-15.md) tracks current portfolio corrections; the [longer-term SOC roadmap](docs/security-operations-analyst-roadmap.md) separately identifies planned work that has not been completed.

## Featured projects

### 1. [Cybersecurity Virtual Lab Environment](https://github.com/bemerson24/cybersecurity-virtual-lab-environment)
**Status: In progress.** I configured Windows 10 and Kali Linux guests with NAT plus Internal Network (`soc-lab`) for each guest. I verified the adapter inventory, Kali addressing and routes, and the Windows 10 internal address and route changes. Guest-to-guest connectivity is not yet validated because I am investigating recurring VM stalls. The [VirtualBox compatibility report](docs/virtualbox-nem-whpx-issue-report-2026-11-15.md) documents my evidence and limits; it has not yet been submitted upstream.

**Focus:** virtualization, Windows/Linux environments, networking fundamentals and technical documentation.

### 2. [Linux Security Baseline Assessment — Ubuntu on WSL 2](https://github.com/bemerson24/ubuntu-wsl2-security-baseline)
**Status: Assessment documented.** A scoped review covering account privileges, file permissions, processes, listening sockets, system logs, DNS resolution and HTTPS connectivity. The README includes screenshots and distinguishes observed results from unresolved warnings.

**Focus:** Linux administration, permissions, systemd, log review and DNS/HTTPS diagnostics.

### 3. [Raspberry Pi — Pi-hole Project](https://github.com/bemerson24/raspberry-pi-pihole)
**Status: Ongoing.** My Raspberry Pi 400 provides native Pi-hole and Unbound DNS services. Alongside DNS and VPN troubleshooting, I added [Docker-based Uptime Kuma and Beszel monitoring](https://github.com/bemerson24/raspberry-pi-pihole/blob/main/case-studies/docker-uptime-kuma-beszel-monitoring-2026-11-15.md) on November 15: three availability checks were Up in the observed dashboard, a monitoring-data backup passed integrity and cross-device checksum verification, and the smaller Uptime Kuma image freed SD-card space. On November 16 I connected the Beszel Agent and verified the `home-dns` dashboard Up with initial CPU and Docker CPU graphs. Other sensor graphs and a fresh post-migration Uptime Kuma monitor capture remain to be verified.

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

I document the environment, procedures, observations, and limitations for each project. I also identify guided coursework and retrospective accounts where relevant.
