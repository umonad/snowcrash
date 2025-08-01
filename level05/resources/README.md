# Flag 05

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
for i in /opt/openarenaserver/* ; do
    (ulimit -t 5; bash -x "$i")
    rm -f "$i"
done
```

we have created a script.sh who call getflag in the /opt/openarenaserver/ directory then

Which yields this token every 2 min: ```viuaaale9huek52boumoomioc```
