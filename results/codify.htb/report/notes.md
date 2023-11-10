# Codify

This easy linux box on HTB is pretty easy to get initial access on (aka a foothold).

The application on port 3000 is vulnerable to the folowing exploit: https://gist.github.com/leesh3288/f05730165799bf56d70391f3d9ea187c

It is possible to find this dependency via the /about page on the app so a very basic webcrawl will find the information required.

The about has the following link to the released version of the virtual machine: https://github.com/patriksimek/vm2/releases/tag/3.9.16

In these release notes are sufficient details to find the exploit.

By modifying the exploit code we're able to find that we're operating under the `svc` account context.

![foothold](./screenshots/exploit-foothold.png)
```

```




[*] ssh found on tcp/22.



[*] http found on tcp/80.



[*] http found on tcp/3000.



