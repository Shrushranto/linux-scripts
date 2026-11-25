# Linux Scripts

Two shell scripts for the DevOps assignment.

## sysinfo.sh
Prints hostname, date/time, logged-in user, disk usage of `/`, memory usage, and the top 5 processes by memory. Also saves the output to `sysinfo_<today's date>.txt`.

```
chmod +x sysinfo.sh
./sysinfo.sh
```

## log_report.sh
Takes a log file and prints total requests, number of 404 errors, and the top 3 IP addresses. Prints a usage message if no file is given.

```
chmod +x log_report.sh
./log_report.sh access.log
```

## Cron 
Runs sysinfo.sh every hour:

```
0 * * * * /home/shru28/linux-scripts/sysinfo.sh
```

## Sample output

### log_report.sh
```
Total requests: 7
404 errors: 2
Top 3 IP addresses:
      3 192.168.1.10
      2 10.0.0.5
      1 192.168.1.11
```

### sysinfo.sh
```
Hostname: LAPTOP-GAITCU74
Date/Time: Tue Nov 24 19:35:57 UTC 2026
Logged-in user: shru28
--- Disk usage of / ---
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdd       1007G  1.3G  955G   1% /
--- Memory usage of ---
               total        used        free      shared  buff/cache   available
Mem:           7.5Gi       593Mi       6.7Gi       4.2Mi       323Mi       6.9Gi
Swap:          2.0Gi          0B       2.0Gi
--- Top 5 processes by memory ---
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         277  0.0  0.4 123464 32664 ?        Ssl  18:50   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
root         143  0.0  0.3  44096 29724 ?        Ss   18:50   0:00 /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
root          61  0.0  0.2  50324 16864 ?        S<s  18:50   0:00 /usr/lib/systemd/systemd-journald
root           1  0.0  0.2  24580 15700 ?        Ss   18:50   0:01 /sbin/init
systemd+      98  0.0  0.1  22416 14440 ?        Ss   18:50   0:00 /usr/lib/systemd/systemd-resolved
```
