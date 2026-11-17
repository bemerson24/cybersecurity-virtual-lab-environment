# Read-only PowerShell event timeline collector — November 16, 2026

**Status:** Packaged script validated on the original Windows 11 host; publication complete. Independent cross-host review remains outstanding.
**Environment:** Windows PowerShell 5.1, non-elevated Windows 11 session. Only event logs accessible to the caller are queried.
**Script:** [`scripts/Get-SafePowerShellTimeline.ps1`](../scripts/Get-SafePowerShellTimeline.ps1)

## Purpose

Convert a repetitive Windows PowerShell event-log triage procedure into a small, reusable read-only function. This utility produces a privacy-limited timeline for a selected process ID and local-time interval. It does not diagnose malware, establish authorization, or act as a SIEM. It was developed alongside a separate investigation of naturally occurring events; the underlying case report remains private pending review.

## Scope and behavior

| Item | Behavior |
|---|---|
| `TargetPid` | Required positive integer PID |
| `StartTime`, `EndTime` | Required local-time bounds; start later than end is rejected |
| `Windows PowerShell` | Engine start/stop IDs 400 and 403 |
| `Microsoft-Windows-PowerShell/Operational` | Script-block logging ID 4104 |
| Returned fields | `TimeCreated`, `LogName`, `Id`, `RecordId`, `ProcessId` |
| Empty match | No event records emitted for that source |
| Unexpected query failure | Terminating error identifying the source log |

The function reads event metadata only; it does not emit script-block text, paths, command-line arguments, or raw event messages. It does not change audit policy, start a task, or execute a monitored script. The caller can sort combined results chronologically.

## Usage

From the repository root in Windows PowerShell 5.1, review the script before loading it:

```powershell
. .\scripts\Get-SafePowerShellTimeline.ps1

$events = @(Get-SafePowerShellTimeline -TargetPid 27600 -StartTime '2026-11-16 13:51:00' -EndTime '2026-11-16 13:53:00')
$events | Sort-Object TimeCreated, RecordId | Format-Table -AutoSize
```

The sample PID/time window is from the author's November 16 exercise and is not portable to other hosts. Choose a PID and interval supported by your own event records.

## Validation on the source host

| Test | Expected | Observed | Outcome |
|---|---|---|---|
| Known activity (PID 27600, 13:51–13:53) | 16 records: one 400, one 403, fourteen 4104 | 16, distributed 1/1/14 | Pass |
| Empty window (14:00–14:01) | 0 records | 0 | Pass |
| Start time later than end | Reject input | `StartTime must not be later than EndTime.` | Pass |
| Simulated event-log access denial | Propagate failure | `Log query failed for Windows PowerShell: SIMULATED_ACCESS_DENIED` | Pass |
| Extracted packaged `.ps1`, newly loaded | 16 records with same distribution | `ScriptLoaded=True`, 16 records (1/1/14), `Passed=True` | Pass |

The inaccessible-log test **simulated** a denied query by substituting `Get-WinEvent` in an isolated scope; it did not test a real Windows access-denied condition. The known events were naturally occurring, not generated as a controlled attack/detection simulation. Fourteen 4104 records represented **eight script blocks** in the underlying investigation, and record count must not be treated as script-execution count.

### Execution-policy observation

The initial attempt to dot-source the extracted file failed under the host's default Windows PowerShell execution policy. The author applied `RemoteSigned` at **Process** scope for that PowerShell session, loaded the script, and independently retrieved the same sixteen events. This was a temporary session-level change, not a persistent machine/user policy change. PowerShell execution policy is not a security boundary; downloaded files may have additional restrictions. Review all scripts before execution and follow organizational policy.

## Limitations and interpretation

- Log availability depends on retention, provider configuration, access permissions, and whether logging was enabled. Zero returned records **do not establish that activity did not occur**; an unavailable or disabled logging source may require separate verification.
- The function queries two PowerShell logs and three event IDs only. It does not collect Security, Sysmon, Task Scheduler, PowerShell 7, or SIEM telemetry.
- A PID can be reused. PID-and-time matching alone does not establish process ownership, legitimacy, or cause.
- The error-classification branch recognizes `NoMatchingEventsFound` for an empty query as tested on this host. Other systems and errors may behave differently; actual inaccessible-log scenarios remain untested.
- The function returns event records without deduplicating multipart script blocks or reconstructing script text.
- No CSV/JSON export or endpoint state changes are performed; users control any subsequent storage and sharing.
- Cross-host, high-volume, and alternative PowerShell-version tests remain outstanding.

## Acceptance checks

- [x] Read-only function with required inputs and privacy-limited output.
- [x] Positive event query, empty-window regression, and invalid-window tests.
- [x] Explicit error propagation under a simulated access-denied condition.
- [x] Saved `.ps1` loaded from extracted package and queried the source host successfully.
- [x] Public documentation excludes personal paths, account names, script bodies and full command lines.
- [ ] Independent validation on another host.

This completes the roadmap's **PowerShell collection/parsing tool** deliverable. It does not complete the separate **controlled Windows event-log investigation**, the private naturally occurring event case study, or the **SIEM/KQL** milestone.
