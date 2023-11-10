```bash
curl -sSikf http://appsanity.htb:80/.well-known/security.txt
```

[/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_known-security.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_known-security.txt):

```
HTTP/1.1 302 Redirect
Content-Type: text/html; charset=UTF-8
Location: https://meddigi.htb/.well-known/security.txt
Server: Microsoft-IIS/10.0
Date: Thu, 02 Nov 2023 16:51:14 GMT
Content-Length: 167

<head><title>Document Moved</title></head>
<body><h1>Object Moved</h1>This document may be found <a HREF="https://meddigi.htb/.well-known/security.txt">here</a></body>
```
