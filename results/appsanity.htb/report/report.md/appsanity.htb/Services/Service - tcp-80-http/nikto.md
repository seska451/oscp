```bash
nikto -ask=no -Tuning=x4567890ac -nointeractive -host http://appsanity.htb:80 2>&1 | tee "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nikto.txt"
```

[/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nikto.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nikto.txt):

```
- Nikto v2.5.0
---------------------------------------------------------------------------
+ Target IP:          10.129.47.209
+ Target Hostname:    appsanity.htb
+ Target Port:        80
+ Start Time:         2023-11-03 03:21:28 (GMT10.5)
---------------------------------------------------------------------------
+ Server: Microsoft-IIS/10.0
+ /: The anti-clickjacking X-Frame-Options header is not present. See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
+ /: The X-Content-Type-Options header is not set. This could allow the user agent to render the content of the site in a different fashion to the MIME type. See: https://www.netsparker.com/web-vulnerability-scanner/vulnerabilities/missing-content-type-header/
+ Root page / redirects to: https://meddigi.htb/
+ /03NhFMxE.: Retrieved x-aspnet-version header: 4.0.30319.
+ No CGI Directories found (use '-C all' to force check all possible dirs)
+ 7589 requests: 0 error(s) and 3 item(s) reported on remote host
+ End Time:           2023-11-03 03:39:06 (GMT10.5) (1058 seconds)
---------------------------------------------------------------------------
+ 1 host(s) tested

```
