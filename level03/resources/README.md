# Flag 03

```bash
./level03
```

yield: exploit me

We scp ```level03``` into our local to put him into ```dogbolt```

```bash
scp -P 4241 level03@localhost:/home/user/level03/level03 level03
```

in dogbolt we can see that the proramme call system() with /bin/env echo

we can create an echo script in /tmp the only directory where we can write something and then export it as path this way our echo script is call and not the real echo and because the binary level03 have root right he will execute our script.

Which yields this token: ```qi0maab88jeaj46qoumi7maus```
