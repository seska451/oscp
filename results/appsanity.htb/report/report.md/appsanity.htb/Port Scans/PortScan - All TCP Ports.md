```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/kali/src/oscp/results/appsanity.htb/scans/_full_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/xml/_full_tcp_nmap.xml" appsanity.htb
```

[/home/kali/src/oscp/results/appsanity.htb/scans/_full_tcp_nmap.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/_full_tcp_nmap.txt):

```
# Nmap 7.94 scan initiated Fri Nov  3 03:20:00 2023 as: nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN /home/kali/src/oscp/results/appsanity.htb/scans/_full_tcp_nmap.txt -oX /home/kali/src/oscp/results/appsanity.htb/scans/xml/_full_tcp_nmap.xml appsanity.htb
Nmap scan report for appsanity.htb (10.129.47.209)
Host is up, received user-set (0.10s latency).
Scanned at 2023-11-03 03:20:00 ACDT for 226s
Not shown: 65532 filtered tcp ports (no-response)
PORT     STATE SERVICE REASON  VERSION
80/tcp   open  http    syn-ack Microsoft IIS httpd 10.0
|_http-title: Did not follow redirect to https://meddigi.htb/
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-server-header: Microsoft-IIS/10.0
443/tcp  open  https?  syn-ack
5985/tcp open  http    syn-ack Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Nov  3 03:23:46 2023 -- 1 IP address (1 host up) scanned in 226.24 seconds

```
