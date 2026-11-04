# TCP and TLS Session Analysis — Student Laptop on Campus Wi-Fi

**Observed:** November 3, 2026 (Pacific Time)  
**Environment:** Windows laptop, student Wi-Fi, Bitdefender VPN and Wireshark  
**Status:** Completed packet-analysis exercise; Firefox connectivity issue remains unresolved  
**Scope:** Connections generated or observed on the student's own endpoint. No network discovery, vulnerability scanning, exploitation or testing of other campus devices.

## Purpose

Investigate an intermittent browsing problem on a personally managed Windows laptop and document the relationship between TCP connections, TLS negotiation and HTTP application sessions. The packet analysis was performed on traffic visible to the laptop's VPN virtual interface, not as an assessment of campus network infrastructure.

The observations below distinguish command output, packet-capture evidence and unresolved hypotheses. Packet numbers and stream indices are local to the saved captures and are not stable identifiers across files.

## Tools and procedure

- Windows PowerShell 5.1: `ipconfig /all`, `nslookup`, `Test-NetConnection`, `Get-NetRoute` and `curl.exe`
- Firefox and Microsoft Edge for ordinary browser connectivity checks
- Wireshark capturing on the Bitdefender VPN virtual adapter (`Local Area Connection`)
- Controlled HTTP/1.1 request: `curl.exe --http1.1 -I https://www.clark.edu`
- Wireshark display filters, including `tcp.port == 443`, `tls.handshake.type == 1`, `tcp.stream == 2` and `tcp.stream == 2 && tls.handshake.type == 2`

The VPN remained enabled for the main Wireshark capture after browser testing. Source IP addresses, local MAC addresses, campus DNS/gateway details and session-cookie values are intentionally excluded from the public record.

## Connectivity findings

| Test | Observed result | Interpretation |
| --- | --- | --- |
| DHCP and route inspection | Wireless interface received an IPv4 address and a default route | Local configuration available; not proof of all network services |
| Campus DNS lookup | A direct query returned A and AAAA records for a public example domain | The queried resolver worked for that request |
| TCP reachability without VPN | `Test-NetConnection 1.1.1.1 -Port 443` succeeded over Wi-Fi | Direct TCP/443 connectivity was available |
| HTTPS command-line request | `curl.exe -I https://example.com` returned HTTP 200 | TCP, TLS and an HTTP response worked for that request |
| Browser comparison without VPN | Edge opened public HTTPS sites; Firefox did not | Issue appeared browser-specific in this test |
| Firefox Troubleshoot Mode | Did not resolve the HTTPS failure | No proven root cause; the test was stopped |
| Restore working configuration | Firefox worked after normal restart and VPN reconnection | Functional recovery, not a confirmed fix |
| Controlled Clark website request | `curl.exe --http1.1 -I https://www.clark.edu` returned HTTP/1.1 200 OK | Application-layer request succeeded |

**Unresolved:** Why Firefox failed when the VPN was disconnected. The results do not establish a DNS outage, a campus firewall problem, a Bitdefender defect or a Firefox defect.

## Evidence A — TCP handshake for the public Clark website

A fresh packet capture isolated the connection by its TLS ClientHello SNI (`www.clark.edu`) and by **TCP stream 2**. The destination was a public HTTPS endpoint. The packet sequence was:

| Frame | Relative time | Observed event |
| --- | ---: | --- |
| 78 | 7.1212655 s | Client → server, TCP SYN |
| 79 | 7.1632541 s | Server → client, TCP SYN/ACK |
| 80 | 7.1638930 s | Client → server, TCP ACK |
| 82 | 7.1726038 s | TLS ClientHello, SNI `www.clark.edu` |
| 84 | 7.2973589 s | TLS ServerHello and ChangeCipherSpec compatibility record |

The TCP handshake completed in approximately **42.6 ms** between the first SYN and final ACK. Wireshark marked the conversation as `Complete, WITH_DATA`. This is packet-level evidence of a completed TCP establishment sequence followed by TLS negotiation.

This timing is a single observation, not a network latency benchmark or a general performance claim.

## Evidence B — Negotiated TLS parameters for the public Clark website

The ServerHello in **frame 84, TCP stream 2** contained:

| Parameter | Observed selection |
| --- | --- |
| TLS version | TLS 1.3 (`supported_versions` extension) |
| Cipher suite | `TLS_AES_256_GCM_SHA384` |
| Key-exchange group | `x25519` |
| Compression | Null |

The ServerHello's `0x0303` legacy-version field displays as TLS 1.2, but the `supported_versions` extension confirms **TLS 1.3**. This is expected TLS 1.3 compatibility behavior and is not evidence of a downgrade.

The captured handshake represents a connection to the **public web endpoint** for the college website, not a measurement of internal college systems or the student Wi-Fi's own encryption. No vulnerability conclusion follows from these cipher choices.

## Evidence C — Separate Firefox service connection

A different capture contained a TLS ClientHello with SNI `profile.accounts.firefox.com` and a corresponding ServerHello. Following that conversation corrected an initial indexing error: Wireshark's **TLS stream index 31** was not the same as the **TCP stream index 40**.

The Firefox service ServerHello selected:

| Parameter | Observed selection |
| --- | --- |
| TLS version | TLS 1.3 |
| Cipher suite | `TLS_AES_128_GCM_SHA256` |
| Key-exchange group | `X25519MLKEM768` |

`X25519MLKEM768` is a **hybrid classical/post-quantum key agreement** combining X25519 with ML-KEM-768. It does not imply that every component of the connection is post-quantum secure. This observation belongs specifically to the Firefox service connection. It must not be attributed to the college website or campus infrastructure.

Wireshark also decoded QUIC Initial packets on UDP/443 in the broader capture. Those packets are evidence of QUIC traffic, not proof that the controlled `curl.exe --http1.1` request used QUIC.

### Connection comparison

| Property | Public college website | Firefox account service |
| --- | --- | --- |
| TLS | 1.3 | 1.3 |
| Cipher suite | AES-256-GCM / SHA-384 | AES-128-GCM / SHA-256 |
| Key-exchange group | X25519 | X25519MLKEM768 |
| Post-quantum component in observed key exchange | No | Yes |

These are results for **individual observed connections**, not universal statements about either service.

## Evidence D — HTTP session state

The controlled `curl` request returned `HTTP/1.1 200 OK`, `Connection: keep-alive` and a `Set-Cookie` header for a `PHPSESSID` cookie with `Secure`, `HttpOnly` and `SameSite=Strict` attributes. The cookie value is intentionally omitted.

These are distinct concepts:

- **TCP connection state** manages reliable transport and the SYN/SYN-ACK/ACK handshake.
- **TLS session state** negotiates encrypted communication over that connection.
- **HTTP application session state** can use cookies such as `PHPSESSID` to associate requests with application state.

HTTP cookies are an **application-layer** mechanism; describing them as literal OSI Layer 5 protocols would be inaccurate. The cookie was observed in the decoded command-line response, not recovered as plaintext from the encrypted packet capture.

## Limitations and handling

- The original Firefox-without-VPN symptom was not root-caused. Restoring the VPN was a working configuration, not a demonstrated permanent fix.
- Only the displayed packet details and user-provided command outputs were evaluated; no exhaustive review of all captured packets was performed.
- The public website's TLS selection is not evidence about student Wi-Fi authentication, access-point security, client isolation or internal campus defenses.
- Raw `.pcapng` files are retained privately and **not committed**. Public screenshots are omitted pending targeted cropping/redaction of local addresses, identifiers and any other sensitive metadata.
- No authorization for active campus-network security testing is claimed or implied.

## Lessons demonstrated

A controlled request can be traced from TCP establishment to TLS negotiation and an HTTP response. Identifiers must be correlated carefully across Wireshark protocol dissectors; a TLS stream index is not automatically a TCP stream index. Browser-specific symptoms require separate investigation from general DNS and transport connectivity. Observed cryptography should be reported per connection and without turning differing cipher selections into unsupported security ratings.

## References

1. [RFC 8446 — The Transport Layer Security (TLS) Protocol Version 1.3](https://www.rfc-editor.org/rfc/rfc8446.html)
2. [RFC 10024 — Post-Quantum Traditional Hybrid Key Agreement Mechanisms for TLS 1.3](https://www.rfc-editor.org/rfc/rfc10024.html)
3. [Wireshark User's Guide](https://www.wireshark.org/docs/wsug_html/)

**Documentation note:** This case study was organized with AI assistance from user-supplied command output and Wireshark screenshots. Findings are limited to observations visible in that evidence.
