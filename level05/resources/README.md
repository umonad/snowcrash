# flag04

```bash
find / -name *level05*
```

gave me:

```text
/etc/apache2/sites-available/level05.conf
/etc/apache2/sites-enabled/level05.conf
/var/mail/level05
/rofs/etc/apache2/sites-available/level05.conf
/rofs/etc/apache2/sites-enabled/level05.conf
/rofs/var/mail/level05
```

inside /var/mail/level05:

```text
*/2 * * * * su -c "sh /usr/sbin/openarenaserver" - flag05
```

inside /usr/sbin/openarenaserver

```bash
#!/bin/sh

for i in /opt/openarenaserver/* ; do
    (ulimit -t 5; bash -x "$i")
    rm -f "$i"
done
```

we have created a script.sh how call getflag in the /opt/openarenaserver/ directory

getflag -> "viuaaale9huek52boumoomioc"
