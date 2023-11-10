```bash
nmap -vv --reason -Pn -T4 -sV -p 443 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/xml/tcp_443_https_nmap.xml" appsanity.htb
```

[/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nmap.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nmap.txt):

```
# Nmap 7.94 scan initiated Fri Nov  3 03:21:38 2023 as: nmap -vv --reason -Pn -T4 -sV -p 443 "--script=banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN /home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nmap.txt -oX /home/kali/src/oscp/results/appsanity.htb/scans/tcp443/xml/tcp_443_https_nmap.xml appsanity.htb
Nmap scan report for appsanity.htb (10.129.47.209)
Host is up, received user-set (0.10s latency).
Scanned at 2023-11-03 03:21:38 ACDT for 80s

PORT    STATE SERVICE REASON  VERSION
443/tcp open  https?  syn-ack
|_http-mobileversion-checker: No mobile version detected.
|_http-malware-host: Host appears to be clean
|_http-referer-checker: Couldn't find any cross-domain scripts.
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-feed: Couldn't find any feeds.
| http-security-headers: 
|   Strict_Transport_Security: 
|_    HSTS not configured in HTTPS Server
|_http-vuln-cve2014-3704: ERROR: Script execution failed (use -d to debug)
|_http-errors: ERROR: Script execution failed (use -d to debug)
|_http-comments-displayer: Couldn't find any comments.
|_http-devframework: Couldn't determine the underlying framework or CMS. Try increasing 'httpspider.maxpagecount' value to spider more pages.
| http-vhosts: 
|_128 names had status ERROR
|_http-config-backup: ERROR: Script execution failed (use -d to debug)
|_http-chrono: Request times for /; avg: 464.87ms; min: 415.92ms; max: 523.75ms
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-aspnet-debug: ERROR: Script execution failed (use -d to debug)
| http-useragent-tester: 
|   Allowed User Agents: 
|     Mozilla/5.0 (compatible; Nmap Scripting Engine; https://nmap.org/book/nse.html)
|     libwww
|     lwp-trivial
|     libcurl-agent/1.0
|     PHP/
|     Python-urllib/2.5
|     GT::WWW
|     Snoopy
|     MFC_Tear_Sample
|     HTTP::Lite
|     PHPCrawl
|     URI::Fetch
|     Zend_Http_Client
|     http client
|     PECL::HTTP
|     Wget/1.13.4 (linux-gnu)
|_    WWW-Mechanize/1.34
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
|_ssl-ccs-injection: No reply from server (TIMEOUT)
|_http-fetch: Please enter the complete path of the directory to save data in.
| http-sitemap-generator: 
|   Directory structure:
|   Longest directory structure:
|     Depth: 0
|     Dir: /
|   Total files found (by extension):
|_    
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-csrf: Couldn't find any CSRF vulnerabilities.

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Nov  3 03:22:58 2023 -- 1 IP address (1 host up) scanned in 80.32 seconds

```
