```bash
feroxbuster -u http://appsanity.htb:80/ -t 10 -w /home/kali/.local/share/AutoRecon/wordlists/dirbuster.txt -x "txt,html,php,asp,aspx,jsp" -v -k -n -q -e -r -o "/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt"
```

[/home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt](file:///home/kali/src/oscp/results/appsanity.htb/scans/tcp80/tcp_80_http_feroxbuster_dirbuster.txt):

```
200      GET       49l      105w     1130c https://meddigi.htb/MedDigiPortal.styles.css
405      GET       29l      107w     1293c https://meddigi.htb/Signup/SignUp
200      GET        5l       86w     5871c https://meddigi.htb/js/jquery.validate.unobtrusive.min.js
200      GET      232l     1381w   136330c https://meddigi.htb/img/sign_form.jpeg
200      GET        7l      279w    42766c https://meddigi.htb/lib/owlcarousel/owl.carousel.min.js
200      GET        4l       25w      230c https://meddigi.htb/js/site.js
200      GET        7l      158w     9028c https://meddigi.htb/lib/waypoints/waypoints.min.js
200      GET       18l       27w      194c https://meddigi.htb/css/site.css
200      GET       11l       56w     2406c https://meddigi.htb/lib/counterup/counterup.min.js
200      GET      573l     3864w   340077c https://meddigi.htb/img/MedDigi_logo_w.png
200      GET        3l      148w     8156c https://meddigi.htb/lib/wow/wow.min.js
200      GET        7l     1031w    78129c https://meddigi.htb/js/bootstrap.bundle.min.js
200      GET        7l     1019w    78468c https://meddigi.htb/lib/bootstrap/dist/js/bootstrap.bundle.min.js
200      GET        4l      443w    24430c https://meddigi.htb/js/jquery.validate.min.js
200      GET        1l       38w     2302c https://meddigi.htb/lib/easing/easing.min.js
200      GET        7l     1994w   162720c https://meddigi.htb/lib/bootstrap/dist/css/bootstrap.min.css
200      GET        2l     1297w    89476c https://meddigi.htb/lib/jquery/dist/jquery.min.js
200      GET      108l      472w     7847c https://meddigi.htb/signup
405      GET       29l      107w     1293c https://meddigi.htb/SignIn/SignIn
200      GET       76l      204w     3792c https://meddigi.htb/signin
200      GET        8l       14w      194c https://meddigi.htb/error

```