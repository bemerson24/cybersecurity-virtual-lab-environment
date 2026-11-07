# Security Operations Analyst Learning Roadmap

**Status:** Learning roadmap — reviewed November 6, 2026  
**Career target:** Build toward security operations roles such as the Security Operations Analyst position reviewed in October 2026 from Office Ally in Vancouver, Washington. That historical posting helped identify skills to develop; its current availability is not asserted here.

## Why this roadmap exists

This roadmap turns a real job description into a practical learning sequence. It prioritizes foundational knowledge, demonstrable work, and eventually supervised real-world experience. Coursework, lab exercises, and professional experience are tracked separately.

## Target-role skill map

| Skill area | Current baseline | Planned evidence |
|---|---|---|
| Networking and security fundamentals | Current focus: networking coursework and Security+ preparation | Clear explanations and repeatable network/log-analysis exercises |
| Windows administration and event logs | Not yet started as a focused portfolio project | Sanitized event samples, investigation notes, and verification steps |
| PowerShell | Networking commands documented in the November 3 endpoint study; dedicated collection/parsing script pending | Small, documented read-only collection or parsing script |
| Microsoft Sentinel and KQL | Not yet started | KQL queries, sample-data investigation, and detection rationale |
| Microsoft Defender / endpoint detection and response | Not yet started | Documented endpoint-alert investigation using a safe lab or approved sample data |
| Identity security | Not yet started as a dedicated project | Sign-in investigation, MFA/privilege concepts, and an account-compromise runbook |
| Email and phishing analysis | Not yet started as a dedicated project | Safe analysis of sample headers/URLs and a triage checklist |
| Incident response and runbooks | Transferable operations/documentation experience; security-specific work remains to be built | Timeline, evidence log, severity rationale, escalation, containment options, and lessons learned |
| Compliance and audit trails | Transferable experience with operational documentation; security frameworks still to learn | Evidence checklist, incident register, and remediation tracker |
| Production security operations | No production SOC experience claimed here | Seek supervised work-study, internship, IT/security role, or other legitimate operational exposure |

These statuses describe the published portfolio baseline as reviewed on November 6, 2026. The [November 3 endpoint TCP/TLS study](tcp-tls-session-analysis-2026-11-03.md) supplies a focused Wireshark exercise; virtual-lab network validation remains pending.

## Learning sequence

### Phase 1 — Current: networking and Security+ foundations

Focus:
- TCP/IP, subnetting, DNS, DHCP, routing, common ports and protocols.
- Authentication, authorization, least privilege, logging, threat types, and incident-response fundamentals.
- Continue Security+ preparation alongside current Clark College coursework.

Evidence to publish:
- Short, accurate notes explaining a network or security concept.
- Published: [November 3 endpoint TCP/TLS exercise](tcp-tls-session-analysis-2026-11-03.md), with procedure, packet observations and limitations.
- Lab network validation with actual adapter settings and test results.

**Exit criteria:** Explain the relevant network path and security concept; reproduce the test; distinguish observed facts from assumptions.

### Phase 2 — Windows logs and PowerShell

Focus:
- Windows Event Viewer and common security/system event categories.
- Logon outcomes, account changes, process/service activity, timestamps, and basic event correlation.
- Introductory PowerShell for safe, read-only collection and filtering.

Project: **Windows Event Log Investigation**
1. Define a benign scenario and the question being investigated.
2. Collect or use clearly identified sample events in an authorized lab.
3. Record timestamps, event identifiers, account/host context, and relevant evidence.
4. Build a timeline and state what the evidence does and does not establish.
5. Write a concise incident note and next-step recommendation.

**Exit criteria:** A reviewer can reproduce the steps and understand the conclusion without relying on unsupported claims.

### Phase 3 — SIEM concepts, Microsoft Sentinel, and KQL

Focus:
- SIEM data ingestion, tables, timestamps, alert triage, analytic rules, and hunting.
- KQL operators such as `where`, `project`, `summarize`, `extend`, `join`, and time filtering.
- Querying sample or lab data without exposing real personal, organizational, or sensitive information.

Project: **KQL Detection and Investigation**
- Include a data-source description and field assumptions.
- Publish queries with comments explaining their purpose.
- Show expected output or representative sanitized sample results.
- Explain false-positive considerations, limitations, and when to escalate.
- Clearly label detections as lab exercises rather than production-tested rules.

**Exit criteria:** Queries run against the documented dataset and the findings are explained accurately.

### Phase 4 — Endpoint, identity, and email investigations

Focus:
- Microsoft Defender concepts and endpoint alert investigation.
- Sign-in anomalies, MFA, least privilege, suspicious account activity, and identity protection.
- Phishing triage: sender and authentication details, URLs, attachments, and business email compromise indicators.

Project: **Endpoint and Identity Incident Case Study**
- Use a benign simulation, approved lab, or public sample data.
- Preserve a timeline and evidence references.
- Document investigation decisions, containment considerations, escalation, and recovery.
- Do not execute malicious files or test against systems without authorization.

**Exit criteria:** Explain how multiple evidence sources support or weaken a hypothesis and identify what remains unknown.

### Phase 5 — Incident response, runbooks, and operational readiness

Project: **Incident Response Documentation Practice**
- Triage checklist and severity rationale.
- Evidence log and timeline template.
- Escalation matrix and decision points.
- Containment/recovery checklist with approval boundaries.
- Remediation tracker and after-action review.
- Clear distinction between observed facts, hypotheses, and actions taken.

Build a small portfolio index linking the best evidence from the virtual lab, Ubuntu WSL 2 baseline, and future security-operations projects.

### Phase 6 — Seek supervised experience

Look for relevant work-study opportunities, internships, IT support or systems roles with security responsibilities, and entry-level security work where duties and supervision are clearly defined.

I plan to build on lab practice through supervised work and document the duties, tools and outcomes as that experience develops.

## Target-role comparison checklist

When reviewing a security operations job description, record:
- Required versus preferred qualifications.
- Named platforms, query languages, endpoint tools, identity systems, and ticketing/runbook expectations.
- Required years and type of experience.
- Which requirements are supported by coursework, which by published lab evidence, and which require professional experience.
- Any schedule, on-call, location, or work-arrangement requirements to evaluate separately.

Revisit this checklist when a new relevant posting appears. Do not assume every employer uses the same stack or hiring criteria.

## Portfolio integrity rules

- Present work as completed only when supported by recorded results; label plans and worksheets separately.
- Distinguish observed results, interpretations and unresolved hypotheses. Document corrections without inventing retrospective test results.
- Include enough commands, queries, sample inputs, outputs, and reasoning for a reviewer to reproduce the result where appropriate.
- Label guided coursework, independent lab practice, simulations, and professional experience distinctly.
- Never publish credentials, tokens, personal data, confidential employer information, or unapproved coursework materials.
- State limitations and unresolved questions. A clean test is not proof that a system is secure.
- Do not claim certifications until earned.

## Current status

- [x] Identify a real local target-role posting to anchor the roadmap.
- [x] Record networking fundamentals and Security+ as the current learning phase.
- [ ] Complete and publish virtual lab network validation evidence.
- [x] Publish a focused [Wireshark investigation](tcp-tls-session-analysis-2026-11-03.md) (personal endpoint, November 3).
- [ ] Start a Windows Event Log investigation.
- [ ] Learn KQL and build a sample-data investigation.
- [ ] Document an endpoint/identity case study.
- [ ] Publish an incident-response runbook pack.
- [ ] Pursue supervised security-related experience.

*Last updated: November 6, 2026. Documentation review only; no new lab tests claimed.*
