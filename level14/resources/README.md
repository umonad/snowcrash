# Flag 14

```bash
$ ll
total 12
dr-x------ 1 level14 level14  100 Mar  5  2016 ./
d--x--x--x 1 root    users    340 Aug 30  2015 ../
-r-x------ 1 level14 level14  220 Apr  3  2012 .bash_logout*
-r-x------ 1 level14 level14 3518 Aug 30  2015 .bashrc*
-r-x------ 1 level14 level14  675 Apr  3  2012 .profile*
```

Inside this exercice we do not have any script, so maybe we can a bug inside getflag. Once decompiled, we see getflag choose a flag based on the current id of the user and return a string, if we choose the correct one it might be goog.

We see inside the code that uid are between 3000 and 3014 (maybe something about level), so we get the string for the uid 3014 "g <t61:|4_|!@IF.-62FH&G~DCK/Ekrvvdwz?v|" and pass it inside the ft_des function we get the flag