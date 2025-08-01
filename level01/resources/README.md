# Flag 01

```bash
    find / -name "*pass*"
```

```text
    /...
    /etc/pam.d/passwd
    /etc/passwd             <-  base de données textuelle d'informations sur les utilisateurs
    /etc/passwd-
    /etc/security/opasswd
    /...
```

```bash
    cat /etc/passwd
```

```text
    ...
    flag00:x:3000:3000::/home/flag/flag00:/bin/bash
    flag01:42hDRfypTqqnw:3001:3001::/home/flag/flag01:/bin/bash  <- ```42hDRfypTqqnw```
    flag02:x:3002:3002::/home/flag/flag02:/bin/bash
    ...
```

Then instal and used "John the ripper"...

```bash
echo "42hDRfypTqqnw" > test.txt
```

```bash
john text.txt
```

```bash
john --show text.txt
->  ?:abcdefg
    1 password hash cracked, 0 left
```

token cracked: ```abcdefg```

getflag -> "f2av5il02puano7naaf6adaaf"
