# flag03

```bash
./level03
```

-> exploit me

in dogbolt->gidra we can see that the proramme call system() with /bin/env echo
we can create an echo script in /tmp the only dirctory where we can write something and then export it aas path this way our echo script is call and not the real echo and because the binary level03 have root right he will execute our script.

getflag -> "qi0maab88jeaj46qoumi7maus"
