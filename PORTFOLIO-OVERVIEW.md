# Brian Emerson — Cybersecurity Learning Portfolio

Cybersecurity BAS student at Clark College developing foundational, hands-on skills in Linux, Windows, virtualization, networking, DNS and security troubleshooting. Professional experience spans commercial software client support, public utilities and municipal government, including operational systems, utility billing and revenue recovery, exception resolution, documentation and process improvement. The technical work follows the same approach: verify what happened, preserve useful evidence, communicate findings and improve the process.

**Career focus:** entry-level IT/security support, security operations and infrastructure-support roles where careful investigation, reliable operations and clear documentation matter.

- **Professional profile:** [LinkedIn](https://www.linkedin.com/in/brianemersonpdx/)
- **GitHub profile:** [bemerson24](https://github.com/bemerson24)

**Project index:** [Published work, open investigations and project backlog](docs/project-index.md) — case studies, open questions and planned lab work.

## Cybersecurity community and professional development

**Clark College Cyber Club member** and current Cybersecurity BAS student. Specific club activities and project contributions will be documented as completed.

## How the projects connect to security operations

The projects are separate environments, but they build a common investigation workflow: **establish a baseline → observe system or network behavior → test a hypothesis → document findings and limitations**. This progression supports preparation for junior security operations work.

| Security-operations foundation | Current evidence | Boundary or next step |
|---|---|---|
| Endpoint and system fundamentals | [Ubuntu WSL 2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, services and journal review | Linux-only guided assessment; Windows event investigation is future work |
| Network visibility and investigation | [Pi-hole DNS case studies](https://github.com/bemerson24/raspberry-pi-pihole): DNS observations and VPN troubleshooting; [endpoint TCP/TLS capture](docs/tcp-tls-session-analysis-2026-11-03.md): verified TCP handshake and TLS 1.3 negotiations | Endpoint packet analysis is not a campus infrastructure assessment; Firefox without-VPN issue remains unresolved |
| Controlled testing environment | [VirtualBox lab](https://github.com/bemerson24/cybersecurity-virtual-lab-environment): Windows and Kali guests, initial network configuration | Per-guest adapters and connectivity evidence still need validation |
| Infrastructure experience | [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi): Raspberry Pi and printer management | Historical maker/operations project, not a security investigation |

For a detailed inventory of completed work, open questions and possible capstone milestones, see the [project index](docs/project-index.md). The [security operations learning roadmap](docs/security-operations-analyst-roadmap.md) describes planned Windows logs, PowerShell, SIEM/KQL and incident-response practice without counting those skills as completed.

## Featured projects

### 1. [Cybersecurity Virtual Lab Environment](https://github.com/bemerson24/cybersecurity-virtual-lab-environment)
**Status: In progress.** A VirtualBox lab with Windows 10 and Kali Linux guests. Current work covers VM setup, troubleshooting and host-only networking. The per-VM adapter inventory and documented connectivity validation are still pending.

**Focus:** virtualization, Windows/Linux environments, networking fundamentals and technical documentation.

### 2. [Linux Security Baseline Assessment — Ubuntu on WSL 2](https://github.com/bemerson24/ubuntu-wsl2-security-baseline)
**Status: Introductory assessment documented.** A guided exercise covering account privileges, file permissions, processes, listening sockets, system logs, DNS resolution and HTTPS connectivity. The README includes screenshots and distinguishes observed results from unresolved warnings.

**Focus:** Linux administration, permissions, systemd, log review and DNS/HTTPS diagnostics.

### 3. [Raspberry Pi — Pi-hole Project](https://github.com/bemerson24/raspberry-pi-pihole)
**Status: Ongoing.** A Raspberry Pi 400 DNS-filtering project with smart-TV traffic observations, laptop DNS/VPN troubleshooting and HTTPS certificate trust setup. The case studies document test results and remaining questions.

**Focus:** DNS concepts, home-network troubleshooting and evidence-based investigation.

### 4. [Raspberry Pi 400 — OctoPi 3D Printer Management](https://github.com/bemerson24/raspberry-pi-octopi)
**Status: Retrospective project (2020–2024).** Documentation of a Raspberry Pi 400 setup used to manage a Creality CR-10S and Snapmaker A350, including print management, camera monitoring and hardware/software integration.

**Focus:** Raspberry Pi, system setup, hardware/software integration and practical troubleshooting.

## Transferable professional experience

### Commercial software client support

**Columbia Ultimate · February 2016–April 2017**

Advanced from **Associate Client Support Specialist (Tier 1)** to **Client Support Specialist (Tier 2)** in **August 2016**.

Supported **CUBS (Columbia Ultimate Business System)**, the company's debt-collection and reporting software. Responsibilities included troubleshooting reported software problems, reproducing issues, investigating database-related questions, assisting with application configuration and escalating unresolved issues.

Provided remote support for legacy mainframe workflows, including dot-matrix printer configuration attempts. Documented tests and escalated unresolved issues.

### Public utilities and municipal operations

Progressed through **Customer Service Representative (CSR)**, **CSR II** and **Senior CSR / Supervisor** roles at Clark Public Utilities. This progression reflects increasing responsibility in utility operations, customer/account workflows, problem resolution and team support.

Public-utility and municipal responsibilities also included business systems, utility billing, revenue recovery, investigating exceptions, documenting procedures and findings and improving operational processes.

That experience developed troubleshooting, recordkeeping, communication and process-improvement skills.

## Current learning priorities

- Prepare for **CompTIA Security+** as the current certification priority.
- Strengthen networking and Linux fundamentals, then build toward further networking certification study.
- Complete and document repeatable virtual-lab network tests.
- Add focused Windows logging, PowerShell and security-operations exercises as they are completed.
- Publish evidence, actual outcomes and limitations for each exercise.

## Documentation approach

Documentation records the configuration, test procedure, observed results and remaining questions. Each project identifies whether it is coursework, guided practice, an independent project or a retrospective account.

Observations are kept separate from interpretations and proposed tests. A restored function is not automatically a proven root cause, and a published explanation is not evidence of independent mastery. Follow-up practice should include explaining the reasoning and reproducing the relevant test.

AI assistance is identified in the case studies where documented. It can help organize evidence and review wording; it does not supply missing measurements or turn planned work into completed results.

*Documentation consistency review: November 6, 2026. No new lab results are claimed by this review.*