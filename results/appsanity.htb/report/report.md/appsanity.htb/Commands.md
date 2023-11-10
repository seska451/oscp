```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/kali/src/oscp/results/appsanity.htb/scans/_quick_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/xml/_quick_tcp_nmap.xml" appsanity.htb

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/kali/src/oscp/results/appsanity.htb/scans/_full_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/xml/_full_tcp_nmap.xml" appsanity.htb

feroxbuster -u http://appsanity.htb:80/ -t 10 -w /home/kali/.local/share/AutoRecon/wordlists/dirbuster.txt -x "txt,html,php,asp,aspx,jsp" -v -k -n -q -e -r -o "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt"

curl -sSikf http://appsanity.htb:80/.well-known/security.txt

curl -sSikf http://appsanity.htb:80/robots.txt

curl -sSik http://appsanity.htb:80/

nikto -ask=no -Tuning=x4567890ac -nointeractive -host http://appsanity.htb:80 2>&1 | tee "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nikto.txt"

nmap -vv --reason -Pn -T4 -sV -p 80 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/xml/tcp_80_http_nmap.xml" appsanity.htb

whatweb --color=never --no-errors -a 3 -v http://appsanity.htb:80 2>&1

wkhtmltoimage --format png http://appsanity.htb:80/ /home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_screenshot.png

feroxbuster -u https://appsanity.htb:443/ -t 10 -w /home/kali/.local/share/AutoRecon/wordlists/dirbuster.txt -x "txt,html,php,asp,aspx,jsp" -v -k -n -q -e -r -o "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_feroxbuster_dirbuster.txt"

curl -sSikf https://appsanity.htb:443/.well-known/security.txt

curl -sSikf https://appsanity.htb:443/robots.txt

curl -sSik https://appsanity.htb:443/

nikto -ask=no -Tuning=x4567890ac -nointeractive -host https://appsanity.htb:443 2>&1 | tee "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nikto.txt"

nmap -vv --reason -Pn -T4 -sV -p 443 --script="banner,(http* or ssl*) and not (brute or broadcast or dos or external or http-slowloris* or fuzzer)" -oN "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_nmap.txt" -oX "/home/kali/src/oscp/results/appsanity.htb/scans/tcp443/xml/tcp_443_https_nmap.xml" appsanity.htb

whatweb --color=never --no-errors -a 3 -v https://appsanity.htb:443 2>&1

wkhtmltoimage --format png https://appsanity.htb:443/ /home/kali/src/oscp/results/appsanity.htb/scans/tcp443/tcp_443_https_screenshot.png


```