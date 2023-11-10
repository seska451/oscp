```bash
nmap -vv --reason -Pn -T4 -sV -p 80 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/xml/tcp_80_http_nmap.xml" appsanity.htb
```

[/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nmap.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nmap.txt):

```
# Nmap 7.94 scan initiated Fri Nov  3 03:21:27 2023 as: nmap -vv --reason -Pn -T4 -sV -p 80 "--script=banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN /home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nmap.txt -oX /home/kali/src/oscp/results/appsanity.htb/scans/tcp80/xml/tcp_80_http_nmap.xml appsanity.htb
Nmap scan report for appsanity.htb (10.129.47.209)
Host is up, received user-set (0.096s latency).
Scanned at 2023-11-03 03:21:28 ACDT for 283s

Bug in http-security-headers: no string output.
PORT   STATE SERVICE REASON  VERSION
80/tcp open  http    syn-ack Microsoft IIS httpd 10.0
|_http-devframework: Couldn't determine the underlying framework or CMS. Try increasing 'httpspider.maxpagecount' value to spider more pages.
|_http-server-header: Microsoft-IIS/10.0
| http-sitemap-generator: 
|   Directory structure:
|   Longest directory structure:
|     Depth: 0
|     Dir: /
|   Total files found (by extension):
|_    
|_http-feed: Couldn't find any feeds.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
|_http-wordpress-users: [Error] Wordpress installation was not found. We couldn't find wp-login.php
|_http-csrf: Couldn't find any CSRF vulnerabilities.
|_http-mobileversion-checker: No mobile version detected.
|_http-litespeed-sourcecode-download: Request with null byte did not work. This web server might not be vulnerable
| http-useragent-tester: 
|   Status for browser useragent: false
|   Redirected To: https://meddigi.htb/
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
|_http-drupal-enum: Nothing found amongst the top 100 resources,use --script-args number=<number|all> for deeper analysis)
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-jsonp-detection: Couldn't find any JSONP endpoints.
| http-vhosts: 
|_128 names had status 302
|_http-comments-displayer: Couldn't find any comments.
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
|_http-date: Thu, 02 Nov 2023 16:51:19 GMT; -14s from local time.
|_http-wordpress-enum: Nothing found amongst the top 100 resources,use --script-args search-limit=<number|all> for deeper analysis)
|_http-referer-checker: Couldn't find any cross-domain scripts.
|_http-fetch: Please enter the complete path of the directory to save data in.
|_http-vuln-cve2013-7091: ERROR: Script execution failed (use -d to debug)
|_http-passwd: ERROR: Script execution failed (use -d to debug)
|_http-config-backup: ERROR: Script execution failed (use -d to debug)
|_http-title: Did not follow redirect to https://meddigi.htb/
|_http-errors: Couldn't find any error pages.
| http-headers: 
|   Content-Type: text/html; charset=UTF-8
|   Location: https://meddigi.htb/
|   Server: Microsoft-IIS/10.0
|   Date: Thu, 02 Nov 2023 16:51:26 GMT
|   Connection: close
|   Content-Length: 143
|   
|_  (Request type: GET)
|_http-chrono: Request times for /; avg: 58.21ms; min: 51.62ms; max: 66.75ms
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Fri Nov  3 03:26:11 2023 -- 1 IP address (1 host up) scanned in 283.22 seconds

```
