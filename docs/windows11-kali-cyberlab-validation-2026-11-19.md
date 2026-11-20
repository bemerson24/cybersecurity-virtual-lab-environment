# Windows 11 / Kali CyberLab — network validation (November 19, 2026)

**Scope:** Two Oracle VirtualBox guests on a Windows 11 host. This record covers configuration and tests observed during guided hands-on setup; it does not claim a vulnerability scan, exploitation, packet capture, or proof of complete containment.

## Outcome

A new Windows 11 Enterprise Evaluation guest completed installation, booted to the desktop with a local `LabAdmin` account, and ran VirtualBox Guest Additions (automatic display resizing observed). With Adapter 1 temporarily attached to NAT, the guest obtained `10.0.2.15/24`, connected to TCP port 443 at `1.1.1.1`, and resolved `microsoft.com` using the Pi-hole DNS service at `192.168.0.116`. These are **pre-isolation** connectivity observations.

Windows 11 and Kali were then placed on the same VirtualBox Internal Network, named `CyberLab`, with static IPv4 addresses:

| Guest | Internal interface during final isolated test | Address | Notes |
|---|---|---|---|
| Windows 11 | Ethernet 2 | `192.168.77.10/24` | ICMPv4 inbound echo rule limited to source `192.168.77.20` and local `192.168.77.10` |
| Kali Linux | eth0 | `192.168.77.20/24` | NetworkManager profile `soc-lab-kali` rebound to `eth0` |

While NAT was enabled, Kali's internal VirtualBox Adapter 2 appeared as `eth1`. When Adapter 1 (NAT) was disabled, the remaining internal adapter appeared as `eth0`. The adapter's MAC was matched to VirtualBox settings privately; it is omitted from this public report. NetworkManager initially reapplied an older `172.20.20.10/24` profile, so the profile was updated to `192.168.77.20/24`, with no gateway or DNS on the internal connection, and later rebound to `eth0`.

## Tests actually performed

1. **Windows 11 → Kali:** `ping 192.168.77.20` returned 4/4 replies (0% loss) after configuring the internal subnet.
2. **Kali → Windows 11:** Initial ping returned 0/4 replies. After creating the Windows inbound ICMPv4 echo rule, `ping -c 4 192.168.77.10` returned 4/4 replies (0% loss).
3. **After disabling NAT:** Kali's initial ping failed with `Network is unreachable` because its prior `eth1` profile did not match the now-present `eth0` interface. After rebinding and activating `soc-lab-kali`, Kali → Windows returned 4/4 replies (0% loss; approximately 1.6 ms average RTT).
4. **After disabling NAT:** Windows → Kali initially returned `Destination host unreachable`, but the subsequent ping returned 4/4 replies (0% loss).
5. **IPv4 routes:** Windows PowerShell found no matching `0.0.0.0/0` route; Kali's `ip route` showed only the on-link `192.168.77.0/24` route through `eth0`. This verifies the absence of a default **IPv4** route in the inspected state, not full proof of isolation.

## Recovery and boundary controls

- Clean Windows 11 installation snapshot taken.
- Network-verified snapshots recorded for both guests, then user reported final isolated-baseline snapshots saved.
- NAT adapters disabled for the isolated lab phase; shared clipboard was disabled after temporary use for setup.
- User reported completing IPv6 route checks, but the actual command outputs were not provided for independent review. **IPv6 isolation is not claimed as verified here.**
- No host-only attachment is part of the documented final design. Snapshots are recovery points, not independent backups.

## Remaining validation

- Retain sanitized screenshots or command outputs as evidence, with host/user details and identifiers reviewed before publishing.
- Inspect both guests' `ip -6 route` / `Get-NetRoute -AddressFamily IPv6` outputs for default and unintended external routes.
- Confirm externally unreachable destinations with explicit negative tests, and check any enabled shared folders, USB passthrough and host integrations before risky exercises.
- Revalidate after restoring snapshots or changing adapter ordering.

## Earlier lab history

The [November 15 worksheet](lab-network-validation.md) documents the separate earlier **Windows 10 + Kali** `soc-lab` configuration at `172.20.20.0/24` and its then-untested connectivity. That historical configuration should not be confused with this newly verified **Windows 11 + Kali** `CyberLab` at `192.168.77.0/24`.
