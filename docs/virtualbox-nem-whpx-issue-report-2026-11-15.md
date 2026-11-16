# VirtualBox NEM/WHPX Windows 10 Guest Freeze — Approved Issue Report

**Status:** Report contribution **submitted November 16, 2026**. [View the published comment](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139). Awaiting maintainer feedback; root cause remains unresolved.

**Upstream issue:** [Existing VirtualBox issue #972](https://github.com/VirtualBox/virtualbox/issues/972) (avoid a duplicate issue).

**Evidence worksheet:** [Virtual lab network validation and performance investigation](lab-network-validation.md).

## Proposed issue/comment text

### Additional reproduction: Windows 11 26H2 with VirtualBox 7.2.22 — Windows 10 freezes and 244-second timer lag

I am experiencing intermittent severe guest responsiveness problems on a Windows 11 Pro 26H2 host while VirtualBox is operating through the Windows hypervisor (NEM/WHPX) with VBS and Memory Integrity enabled. This is an independent report and does not establish the same underlying defect as the original issue.

#### Verified environment

| Component | Configuration |
| --- | --- |
| VirtualBox | 7.2.22 r175245 |
| Host | Windows 11 Pro 26H2, build 26300.9974, x86-64 |
| Processor | Intel Core i7-1185G7, 4 physical cores and 8 logical processors |
| Physical RAM | 32 GB installed |
| Host security | VBS running (status 2); Memory Integrity/HVCI, Secure Launch, and SMM Firmware Measurement running |
| Host optional features | `VirtualMachinePlatform` enabled; `HypervisorPlatform` and `Microsoft-Hyper-V-All` disabled |
| Affected guest | Windows 10; 8 GB RAM; initially 4 vCPUs, reduced to 2 |
| Second guest | Kali Linux; powered off during the latest Windows 10 recurrence |

WSL2 is used on the host. Despite optional Hyper-V being disabled, the Windows hypervisor is active and VirtualBox can query its capabilities and create its NEM partition.

The exact Windows 10 guest build and Guest Additions version are not yet verified.

#### Actual behavior

The Windows 10 guest initially booted quickly after reducing its vCPU allocation from four to two and confirmed it saw two processors. It subsequently became extremely sluggish or unresponsive again **while the Kali VM was powered off**. Similar responsiveness problems had also occurred when both guests were running. Reducing the vCPU count did not resolve the recurrence.

The issue is intermittent: neither a fixed time-to-failure nor a consistently reproducing application/workload has been established.

Relevant `VBox.log` entries:

```text
00:00:06.226968 HM: HMR3Init: Attempting fall back to NEM: VT-x is not available
00:00:06.249171 NEM: WHvCapabilityCodeHypervisorPresent is TRUE, so this might work...
00:00:06.251874 NEM: Created partition 0000022d8fbd8f10. APIC emulation mode: VirtualBox
00:00:06.251973 NEM: NEMR3Init: Snail execution mode is active!
00:00:06.256177 NEM: Successfully set up partition (device handle 0000000000000df5, partition ID 0x0)
00:09:53.449479 TM: Giving up catch-up attempt at a 244 381 120 090 ns lag; new total: 244 381 120 090 ns
00:10:25.115019 ACPI: Entering S5 power state (power down)
00:10:25.115120 Changing the VM state from 'RUNNING' to 'POWERING_OFF'
00:10:25.122631 Changing the VM state from 'POWERING_OFF' to 'OFF'
```

The reported **244.381-second time-manager catch-up lag** is a virtual-clock discrepancy, **not** a direct measurement of continuous guest freeze duration. NEM partition creation and setup succeeded; this was not an observed partition-initialization failure.

#### Reproduction conditions

1. On the specified Windows 11 host, leave normal VBS and Memory Integrity security features enabled.
2. Launch the Windows 10 guest with 8 GB RAM and 2 vCPUs, leaving the Kali VM powered off.
3. Use the guest normally. It may initially be responsive and then become severely sluggish or unresponsive.
4. Inspect `VBox.log` for the NEM fallback, snail execution mode, and `TM: Giving up catch-up attempt` messages.

**Expected:** A Windows 10 guest that remains responsive without multi-minute virtual-clock timing discrepancies while host security protections remain enabled.

#### Troubleshooting and recovery

- Reduced the affected Windows 10 guest from 4 vCPUs to 2; the problem recurred with Kali powered off.
- Confirmed successful NEM partition creation and setup under the Windows hypervisor.
- Sent `VBoxManage controlvm "Windows 10" acpipowerbutton` from the host during severe unresponsiveness. The guest subsequently responded sufficiently to shut down normally. This is a recovery observation, not a confirmed fix.
- Queried the Windows 11 host `System` log around the estimated timing event. No critical/error/warning events appeared in the selected ±3-minute window. Two informational BITS service startup-type changes occurred nearby, but their initiating process and any causal connection are unknown.
- Queried `Microsoft-Windows-WindowsUpdateClient/Operational` for the same interval; no matching events were returned.
- Preserved host WSL2, VBS/HVCI, BitLocker, existing virtual machine disks and snapshots. No forced shutdown or disabling host protections was performed.

#### Request to maintainers

Could the maintainers recommend additional supported diagnostics or a workaround for **NEM/WHPX timekeeping and guest responsiveness problems on Windows 11 26H2 and VirtualBox 7.2.22** that preserves VBS, Memory Integrity, WSL2 and BitLocker?

The time-manager lag resembles [VirtualBox issue #837](https://github.com/VirtualBox/virtualbox/issues/837), but an identical root cause is not established. A full `VBox.log` has **not yet been submitted**; it requires additional privacy review and sanitization first.

---

## Submission notes

- I prepared this report from my lab observations and saved it here for review before upstream submission.
- I published [my November 16 contribution to VirtualBox issue #972](https://github.com/VirtualBox/virtualbox/issues/972#issuecomment-6924524139) at 09:54 PST. The comment includes selected log lines and explicitly states that a complete sanitized VM log is not attached. This page retains the supporting report; the linked comment is the authoritative record of the submitted wording.
- The included log excerpt was selected to support technical observations. The full log and unsanitized screenshots are intentionally excluded.
