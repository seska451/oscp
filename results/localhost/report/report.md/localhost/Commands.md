```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/kali/src/oscp/results/localhost/scans/_quick_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/localhost/scans/xml/_quick_tcp_nmap.xml" localhost

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/kali/src/oscp/results/localhost/scans/_full_tcp_nmap.txt" -oX "/home/kali/src/oscp/results/localhost/scans/xml/_full_tcp_nmap.xml" localhost


```