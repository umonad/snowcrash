
# FLAG09

```bash
ll
total 24
dr-x------ 1 level09 level09  140 Mar  5  2016 ./
d--x--x--x 1 root    users    340 Aug 30  2015 ../
-r-x------ 1 level09 level09  220 Apr  3  2012 .bash_logout*
-r-x------ 1 level09 level09 3518 Aug 30  2015 .bashrc*
-rwsr-sr-x 1 flag09  level09 7640 Mar  5  2016 level09*
-r-x------ 1 level09 level09  675 Apr  3  2012 .profile*
----r--r-- 1 flag09  level09   26 Mar  5  2016 token
```

There is an executable at the root. There is also a token file containing ```f4kmm6p|=�p�n��DB�Du{��.```

```bash
scp -P 4241 level09@localhost:/home/user/level09/level09 level09
```

We scp ```level09*``` into our local to put him into ```dogbolt```

We can see sfter some test with random argument to ```level09*``` and with taking a look at th reverse program that the program just adds its index to the ASCII value of every character, so let's reverse!

```bash
scp -P 4241 reverse.py level09@localhost:/tmp
```

```bash
python /tmp/reverse.py "$(cat token)"
```

Which yields this token-looking token: ```f3iji1ju5yuevaus41q1afiuq```.
