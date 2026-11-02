# Brian Emerson — Cybersecurity Learning Portfolio

Cybersecurity BAS student at Clark College developing foundational, hands-on skills in Linux, Windows, virtualization, networking, DNS, and security troubleshooting. My professional background spans commercial software client support, public utilities, and municipal government, including operational systems, utility billing and revenue recovery, exception resolution, documentation, and process improvement. I bring that operations mindset into technical work: verify what happened, preserve useful evidence, communicate clearly, and improve the process.

**Career focus:** entry-level IT/security support, security operations, and infrastructure-support roles where careful investigation, reliable operations, and clear documentation matter.

- **Professional profile:** [LinkedIn](https://www.linkedin.com/in/brianemersonpdx/)
- **GitHub profile:** [bemerson24](https://github.com/bemerson24)

**Project index:** [Published work, open investigations and project backlog](docs/project-index.md) — case studies, open questions and planned lab work.

## Cybersecurity community and professional development

I am a member of the **Clark College Cyber Club** while pursuing the Cybersecurity BAS at Clark College. The club focuses on cybersecurity awareness, technical skill development, collaboration, and hands-on learning. I will document specific activities and projects as I take part in them.

## How the projects connect to security operations

The projects are separate environments, but they build a common investigation workflow: **establish a baseline → observe system or network behavior → test a hypothesis → document findings and limitations**. My goal is to build toward junior security operations work.

| Security-operations foundation | Current evidence | Boundary or next step |
|---|---|---|
| Endpoint and system fundamentals | [Ubuntu WSL 2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline): permissions, processes, services and journal review | Linux-only guided assessment; Windows event investigation is future work |
| Network visibility and investigation | [Pi-hole DNS case studies](https://github.com/bemerson24/raspberry-pi-pihole): client DNS observations and DNS/VPN troubleshooting | Preliminary attribution and unresolved hypotheses are documented |
| Controlled testing environment | [VirtualBox lab](https://github.com/bemerson24/cybersecurity-virtual-lab-environment): Windows and Kali guests, initial network configuration | Per-guest adapters and connectivity evidence still need validation |
| Infrastructure experience | [OctoPi retrospective](https://github.com/bemerson24/raspberry-pi-octopi): Raspberry Pi and printer management | Historical maker/operations project, not a security investigation |

For a detailed inventory of completed work, open questions and possible capstone milestones, see the [project index](docs/project-index.md). The [security operations learning roadmap](docs/security-operations-analyst-roadmap.md) describes planned Windows logs, PowerShell, SIEM/KQL and incident-response practice without counting those skills as completed.

## Featured projects

### 1. [Cybersecurity Virtual Lab Environment](https://github.com/bemerson24/cybersecurity-virtual-lab-environment)
**Status: In progress.** A VirtualBox lab with Windows 10, Windows 11, and Kali Linux guests. Current work covers VM setup, troubleshooting, and host-only networking. The per-VM adapter inventory and documented connectivity validation are still pending.

**Focus:** virtualization, Windows/Linux environments, networking fundamentals, and technical documentation.

### 2. [Linux Security Baseline Assessment — Ubuntu on WSL 2](https://github.com/bemerson24/ubuntu-wsl2-security-baseline)
**Status: Introductory assessment documented.** A guided exercise covering account privileges, file permissions, processes, listening sockets, system logs, DNS resolution, and HTTPS connectivity. The README includes screenshots and distinguishes observed results from unresolved warnings.

**Focus:** Linux administration, permissions, systemd, log review, and DNS/HTTPS diagnostics.

### 3. [Raspberry Pi — Pi-hole Project](https://github.com/bemerson24/raspberry-pi-pihole)
**Status: Ongoing.** A Raspberry Pi 400 DNS-filtering project with smart-TV traffic observations, laptop DNS/VPN troubleshooting and HTTPS certificate trust setup. The case studies document test results and remaining questions.

**Focus:** DNS concepts, home-network troubleshooting, and evidence-based investigation.

### 4. [Raspberry Pi 400 — OctoPi 3D Printer Management](https://github.com/bemerson24/raspberry-pi-octopi)
**Status: Retrospective project (2020–2024).** Documentation of a Raspberry Pi 400 setup used to manage a Creality CR-10S and Snapmaker A350, including print management, camera monitoring, and hardware/software integration.

**Focus:** Raspberry Pi, system setup, hardware/software integration, and practical troubleshooting.

## Transferable professional experience

### Commercial software client support

At Columbia Ultimate, I worked from **February 2016 through April 2017**. I joined as an **Associate Client Support Specialist (Tier 1)** in February 2016 and advanced to **Client Support Specialist (Tier 2)** in **August 2016**.

I supported **CUBS (Columbia Ultimate Business System)**, the company's debt-collection and reporting software. My work included troubleshooting client-reported software problems, investigating and reproducing issues, working with database-related questions, helping clients configure applications, and escalating technical issues when needed.

I also provided remote support for legacy mainframe workflows, including attempts to configure dot-matrix printers. I documented what I tested and escalated unresolved issues.

This role gave me direct commercial software-support experience and a clear progression from Tier 1 to Tier 2 within about six months.

### Public utilities and municipal operations

At Clark Public Utilities, I progressed through **Customer Service Representative (CSR)**, **CSR II**, and **Senior CSR / Supervisor** roles. This progression reflects increasing responsibility in utility operations, customer/account workflows, problem resolution, and team support.

My public-utility and municipal experience also included business systems, utility billing, revenue recovery, investigating exceptions, documenting procedures and findings, and improving operational processes.

That work developed my troubleshooting, recordkeeping, communication and process-improvement skills.

## Current learning priorities

- Prepare for **CompTIA Security+** as my first certification priority.
- Strengthen networking and Linux fundamentals, then build toward further networking certification study.
- Complete and document repeatable virtual-lab network tests.
- Add focused Windows logging, PowerShell, and security-operations exercises as they are completed.
- Publish evidence, actual outcomes, and limitations for each exercise.

## Documentation approach

I record what I configured, what I tested, what happened and what still needs work. Each project identifies whether it is coursework, guided practice, an independent project or a retrospective account.