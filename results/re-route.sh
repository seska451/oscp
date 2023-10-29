#htb sets up the following default route which is redundant and breaks your internet
sudo route del -net default gw 10.10.16.1 netmask 0.0.0.0 dev tun0