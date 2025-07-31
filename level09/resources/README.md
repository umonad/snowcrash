
# FLAG09

```bash
scp -P 4241 level9@localhost@localhost:/level09/level09 level09
```

put the file into dogbolt and guess what to do:

Reverse the programe that probably have been executed in the string in token
to get the original string.

```bash
scp -P 4241 reverse.py level09@localhost:/tmp
```

```bash
python /tmp/reverse.py "$(cat token)"
```

-> "f3iji1ju5yuevaus41q1afiu"

getflag -> "s5cAJpM8ev6XHw998pRWG728z"
