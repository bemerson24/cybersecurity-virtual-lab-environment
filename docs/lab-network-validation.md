# Virtual Lab — Network Validation Worksheet

**Environment:** Windows 11 Pro host / Oracle VirtualBox / Windows 10, Windows 11, and Kali Linux guests
**Status:** Planned validation worksheet. No new network tests are claimed in this document.

## Goal

Record **which adapters are attached to each virtual machine**, confirm the intended isolation boundary, and preserve simple reproducible connectivity evidence. Creating a host-only network does not, by itself, prove that every guest has only a host-only adapter.

## 1. Inventory configuration before testing

Use the VirtualBox GUI to record each guest's **Settings → Network** information. Check *every* enabled adapter rather than only Adapter 1.

| Guest | Enabled adapters and modes | Host-only network name | IP address (private notes only) | Verified date |
|---|---|---|---|---|
| Windows 10 | To verify | To verify | Not published | Pending |
| Windows 11 | To verify | To verify | Not published | Pending |
| Kali Linux | To verify | To verify | Not published | Pending |

If NAT or bridged adapters exist, document them and **do not** describe the environment as completely isolated. Confirm that Windows 10 and Windows 11 guests are on the intended host-only network before testing communication between guests.

## 2. Collect guest addressing evidence

Inside each Windows guest, run:

```powershell
ipconfig /all
route print
```

Inside the Kali guest, run:

```bash
ip -br addr
ip route
```

Save a screenshot or short sanitized excerpt. Redact personal usernames, host names, MAC addresses, serials, and home network details before publishing.

## 3. Test only known lab endpoints

Once adapter membership and the guest addresses are verified, run an ordinary reachability test between **two authorized lab guests on the same intended test network**:

Windows:

```powershell
ping <verified-lab-guest-ip>
```

Kali:

```bash
ping -c 4 <verified-lab-guest-ip>
```

These are **examples to run later**, not transcripts of tests already performed. A failed ping can reflect guest firewall policy or ICMP handling; it does not automatically prove the network is disconnected.

## 4. Result log — fill after actual tests

| Source guest | Destination guest | Adapter/network verified? | Test outcome | Evidence |
|---|---|---|---|---|
| Not recorded | Not recorded | Pending | Not tested | None yet |
| Not recorded | Not recorded | Pending | Not tested | None yet |

## 5. Document isolation separately

- [ ] All enabled adapter modes have been inventoried for every VM.
- [ ] Network attachment shown with sanitized screenshots.
- [ ] Intended host-only connectivity tested and results logged.
- [ ] Any NAT/bridged connections explicitly documented.
- [ ] No broader isolation, hardening, or security conclusion made beyond the recorded results.

## Next step

After this worksheet contains actual observations, update the main README's **Evidence to add** checklist. Avoid marking connectivity or network isolation as fully verified until the relevant guest adapter settings and test outputs are documented.
