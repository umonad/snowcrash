# Flag 13

```bash
$ ll
total 20
dr-x------ 1 level13 level13  120 Mar  5  2016 ./
d--x--x--x 1 root    users    340 Aug 30  2015 ../
-r-x------ 1 level13 level13  220 Apr  3  2012 .bash_logout*
-r-x------ 1 level13 level13 3518 Aug 30  2015 .bashrc*
-rwsr-sr-x 1 flag13  level13 7303 Aug 30  2015 level13*
-r-x------ 1 level13 level13  675 Apr  3  2012 .profile*
```

We are given an executable, so obviously we want to decompile it. We see that it does a call to a function if uid is 4242 and then print the result.

So we can maybe reverse this with gdb want set the eax register after the getuid call so it is equal to 4242 and call the function

```gdb
layout asm
break main
set $eax = 4242
```

Or simply copy the decompiled code and compile it yourself so you can have the result of ceaser conversion