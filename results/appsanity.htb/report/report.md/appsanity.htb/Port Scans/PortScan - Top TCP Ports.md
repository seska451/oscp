```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/kali/src/oscp/results/appsanity.htb/scans/_quick_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/xml/_quick_tcp_nmap.xml" appsanity.htb
```

[/home/kali/src/oscp/results/appsanity.htb/scans/_quick_tcp_nmap.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/_quick_tcp_nmap.txt):

```
# Nmap 7.94 scan initiated Fri Nov  3 03:20:00 2023 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN /home/kali/src/oscp/results/appsanity.htb/scans/_quick_tcp_nmap.txt -oX /home/kali/src/oscp/results/appsanity.htb/scans/xml/_quick_tcp_nmap.xml appsanity.htb
Nmap scan report for appsanity.htb (10.129.47.209)
Host is up, received user-set (0.099s latency).
Scanned at 2023-11-03 03:20:00 ACDT for 87s
Not shown: 998 filtered tcp ports (no-response)
PORT    STATE SERVICE REASON  VERSION
80/tcp  open  http    syn-ack Microsoft IIS httpd 10.0
|_http-server-header: Microsoft-IIS/10.0
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-title: Did not follow redirect to https://meddigi.htb/
443/tcp open  https?  syn-ack
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Nov  3 03:21:27 2023 -- 1 IP address (1 host up) scanned in 87.15 seconds

```
