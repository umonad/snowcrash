
# flag00

```bash
find / -user "flag00"
```

```text
/usr/sbin/john  <-- hint for the next level we deduce that we will use john the ripper
/rofs/usr/sbin/john
```

```bash
cat /usr/sbin/john
```

that gave us -> cdiiddwpgswtgt

ceasar decrypt give us token : ```nottoohardhere```
