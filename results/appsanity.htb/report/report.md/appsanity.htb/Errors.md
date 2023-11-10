```
[*] Service scan Known Security (tcp/443/https/known-security) ran a command which returned a non-zero exit code (35).
[-] Command: curl -sSikf https://appsanity.htb:443/.well-known/security.txt
[-] Error Output:
curl: (35) Recv failure: Connection reset by peer


[*] Service scan Curl Robots (tcp/443/https/curl-robots) ran a command which returned a non-zero exit code (35).
[-] Command: curl -sSikf https://appsanity.htb:443/robots.txt
[-] Error Output:
curl: (35) Recv failure: Connection reset by peer


[*] Service scan Curl (tcp/443/https/curl) ran a command which returned a non-zero exit code (35).
[-] Command: curl -sSik https://appsanity.htb:443/
[-] Error Output:
curl: (35) Recv failure: Connection reset by peer


[*] Service scan wkhtmltoimage (tcp/80/http/wkhtmltoimage) ran a command which returned a non-zero exit code (1).
[-] Command: wkhtmltoimage --format png http://appsanity.htb:80/ /home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_screenshot.png
[-] Error Output:
Loading page (1/2)
[>                                                           ] 0%
Error: Failed to load https://meddigi.htb/, with network status code 3 and http status code 0 - Host meddigi.htb not found
[============================================================] 100%
Error: Failed loading page http://appsanity.htb:80/ (sometimes it will work just to ignore this error with --load-error-handling ignore)
Exit with code 1 due to network error: HostNotFoundError


[*] Service scan wkhtmltoimage (tcp/443/https/wkhtmltoimage) ran a command which returned a non-zero exit code (1).
[-] Command: wkhtmltoimage --format png https://appsanity.htb:443/ /home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_screenshot.png
[-] Error Output:
Loading page (1/2)
[>                                                           ] 0%
Error: Failed to load https://appsanity.htb/, with network status code 2 and http status code 0 - Connection closed
[============================================================] 100%
Error: Failed loading page https://appsanity.htb:443/ (sometimes it will work just to ignore this error with --load-error-handling ignore)
Exit with code 1 due to network error: RemoteHostClosedError



```