
# Snowcrash

## useful commands

to see which port ar used or free on a network

```bash
nmap localhost -p <startrange>-<endrange>
```

to connect in ssh to your vm

```bash
ssh levelXX@localhost -p <portforwarded_in_VMB->network->NAT> or <port_if_you_don't deal with 42>
```

to secure copy a file from your guest

```bash
scp -P <port> levelXX@localhost:/dir_rc/file_source dir_dest/file_dest
```

to secure copy a file to your guest (server)

```bash
scp -P <port> file_src  levelXX@localhost:/dir_dest/file_dest
```
