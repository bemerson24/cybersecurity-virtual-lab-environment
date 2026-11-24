# Three-Pi Cybersecurity Lab — Design Concept

**Status:** Concept — not yet implemented  
**Planning horizon:** 2027; implementation schedule provisional  
**Hardware reserved:** Three unused Raspberry Pi 5 boards, each with a 64 GB microSD card

## Purpose

I want to develop a realistic cybersecurity lab that demonstrates work relevant to a junior Security Operations Center (SOC) analyst or entry-level security engineer. The goal is not simply to connect three Raspberry Pis or install a collection of tools. I want to design, operate, investigate, and document an environment that reflects practical security responsibilities.

The exact system architecture, operating systems, software stack, node roles, and scenario are **not yet selected**. This document records a direction for future evaluation, not a finished design proposal or an assertion that the lab exists.

## Work to model

| Professional responsibility | Potential technical evidence |
|---|---|
| Security monitoring | Defined log sources, event collection, and evidence that relevant events are visible |
| SOC alert triage | A controlled alert, supporting telemetry, investigation timeline, alternative explanations, and disposition |
| Incident response | A scoped scenario, response decision record, and validation of recovery or containment |
| Vulnerability management | Authorized assessment, prioritized findings, remediation, and retest evidence |
| Security engineering | Justified architecture, documented controls, configuration management, and validation tests |
| Communication | Clear diagrams, procedures, reports, limitations, and lessons learned |

These are possible evaluation areas, not commitments to deliver all of them or claims of completed tasks.

## Design constraints and decisions still open

- **Realistic scope:** Model a small organization's operational needs; a public utility or municipal environment is one possible context, not a selected scenario.
- **Three physical nodes:** The three Raspberry Pi 5 boards are available, but their duties will follow requirements rather than predetermined labels.
- **Resource limits:** Evaluate memory, CPU, storage endurance, network throughput, and maintenance burden before selecting monitoring or SIEM software. Keep workload sizing evidence-based.
- **Lab separation:** Protect the existing home network and Pi-hole services. Any attack simulation must remain authorized and controlled; network isolation needs to be tested, not merely assumed.
- **Laptop storage:** Avoid making the 256 GB Windows laptop responsible for unnecessary additional VM workloads, but do not treat microSD storage as a reliable substitute for a VM SSD.
- **Evidence integrity:** Distinguish planned tasks, performed work, observed results, and unresolved issues. Exclude secrets, personal data, and sensitive topology details from public documentation.

## Candidate proof-of-work sequence

1. **Requirements and threat model:** Define an organization, assets, users, realistic threats, success criteria, and constraints.
2. **Build and baseline:** Document actual equipment, network design, system configurations, access controls, and baseline operation.
3. **Instrument and validate:** Demonstrate that selected log sources or security events reach the intended monitoring workflow.
4. **Controlled investigation:** Generate a benign, authorized test event, preserve timestamps and evidence, analyze the result, and record a defensible disposition.
5. **Improve and retest:** Apply a targeted control or configuration change, verify its effect, and identify remaining risks.
6. **Explain and demonstrate:** Produce a concise technical report and a repeatable walkthrough that can be used in coursework and job interviews.

The sequence is provisional. Actual scope will follow validated requirements and available resources.

## Career relevance test

Before adding a major component, ask:

1. Does it represent a responsibility an SOC analyst or security engineer actually performs?
2. Can I independently explain, operate, troubleshoot, and reproduce it?
3. What specific, privacy-safe evidence could establish that I did the work?
4. Is it feasible on the hardware and within available time and resources?

## Development approach

Evaluate requirements and candidate designs before selecting node roles, software or implementation milestones. Existing verified projects remain independent evidence of technical practice.

## Relationship to the existing portfolio

Existing [virtual lab](../README.md), [security-operations roadmap](security-operations-analyst-roadmap.md), [Ubuntu WSL 2 baseline](https://github.com/bemerson24/ubuntu-wsl2-security-baseline), and [Pi-hole project](https://github.com/bemerson24/raspberry-pi-pihole) provide separate, dated examples of technical practice. They are **not** components of a completed three-Pi deployment. The existing Raspberry Pi 400 home DNS/monitoring system is also separate from the reserved lab hardware.

**Next planning checkpoint:** Compare technical requirements and SOC/security engineering job responsibilities before assigning node roles or selecting software.
