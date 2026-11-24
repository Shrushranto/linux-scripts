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

## Cron (bonus)
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
(paste your sysinfo.sh output here)
