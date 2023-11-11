# Codify

This easy linux box on HTB is pretty easy to get initial access on (aka a foothold).

The application on port 3000 is vulnerable to the folowing exploit: https://gist.github.com/leesh3288/f05730165799bf56d70391f3d9ea187c

It is possible to find this dependency via the /about page on the app so a very basic webcrawl will find the information required.

The about has the following link to the released version of the virtual machine: https://github.com/patriksimek/vm2/releases/tag/3.9.16

In these release notes are sufficient details to find the exploit.

By modifying the exploit code we're able to find that we're operating under the `svc` account context.

![foothold](./screenshots/exploit-foothold.png)

This also allows us to upload a public ssh key and login via SSH (by creating a ~/.ssh/authorized_keys file)

Useful things running on the host:

- PM2 v5.3.0
- docker
- python3

Usernames:Passwords
- svc:???
- joshua:spongebob1
- _laurel

Several SQLite db's exist on the host one contains support tickets giving a password hash for the `joshua` user

```
joshua|$2a$12$SOn8Pf6z8fO/nVsNbAAequ/P6vLRJJl7gCUEiYBU2iLHn4G/p/Zw2
```

This password is weak and susceptible to a short dictionary attack 

```bash
john --format=bcrypt --wordlist=/usr/share/seclists/Passwords/Leaked-Databases/rockyou-30.txt ./hashes.txt

Using default input encoding: UTF-8
Loaded 1 password hash (bcrypt [Blowfish 32/64 X3])
Cost 1 (iteration count) is 4096 for all loaded hashes
Will run 8 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
spongebob1       (joshua)     
1g 0:00:00:21 DONE (2023-11-11 06:50) 0.04739g/s 64.83p/s 64.83c/s 64.83C/s 0000000000..lacoste
Use the "--show" option to display all of the cracked passwords reliably
Session completed.         
```

This is also the password for the host user `joshua`. Running sudo -l shows that joshua may run the following script as `root`.

User joshua may run the following commands on codify:
    (root) /opt/scripts/mysql-backup.sh


You can bypass the password check to successfully backup the db by using a wildcard `*` - however this means that we can use the wildcard to bruteforce the password used for root. This also happens to be the root account password.

The joshua user can access the db with their ssh password
```bash
joshua@codify:~$ /usr/bin/mysql -u "joshua" -h 0.0.0.0 -P 3306 -p"spongebob1" -e "SELECT User, Password FROM mysql.user"
mysql: [Warning] Using a password on the command line interface can be insecure.
+-------------+-------------------------------------------+
| User        | Password                                  |
+-------------+-------------------------------------------+
| mariadb.sys |                                           |
| root        | *4ECCEBD05161B6782081E970D9D2C72138197218 |
| root        | *4ECCEBD05161B6782081E970D9D2C72138197218 |
| passbolt    | *63DA7233CC5151B814CBEC5AF8B3EAC43347A203 |
| joshua      | *323A5EDCBFA127CC75F6C155457533AC1D5C4921 |
| root        | *4ECCEBD05161B6782081E970D9D2C72138197218 |
+-------------+-------------------------------------------+
```
The root password hash does not match any in rockyou.txt

[*] ssh found on tcp/22.



[*] http found on tcp/80.



[*] http found on tcp/3000.



