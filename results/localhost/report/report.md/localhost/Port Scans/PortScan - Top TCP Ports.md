```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/kali/src/oscp/results/localhost/scans/_quick_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/localhost/scans/xml/_quick_tcp_nmap.xml" localhost
```

[/home/kali/src/oscp/results/localhost/scans/_quick_tcp_nmap.txt](file:///home/kali/src/oscp/results/localhost/scans/_quick_tcp_nmap.txt):

```
# Nmap 7.94 scan initiated Fri Oct 27 22:42:21 2023 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN /home/kali/src/oscp/results/localhost/scans/_quick_tcp_nmap.txt -oX /home/kali/src/oscp/results/localhost/scans/xml/_quick_tcp_nmap.xml localhost
Warning: Hostname localhost resolves to 2 IPs. Using 127.0.0.1.
Nmap scan report for localhost (127.0.0.1)
Host is up, received user-set (0.000081s latency).
Other addresses for localhost (not scanned): ::1
Scanned at 2023-10-27 22:42:22 EDT for 0s
All 1000 scanned ports on localhost (127.0.0.1) are in ignored states.
Not shown: 1000 closed tcp ports (conn-refused)

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Oct 27 22:42:22 2023 -- 1 IP address (1 host up) scanned in 0.44 seconds

```
