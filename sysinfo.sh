OUT="sysinfo_$(date +%F).txt"
{
echo "Hostname: $(hostname)"
echo "Date/Time: $(date)"
echo "Logged-in user: $(whoami)"
echo "--- Disk usage of / ---"
df -h /
echo "--- Memory usage of ---"
free -h
echo "--- Top 5 processes by memory ---"
ps aux --sort=-%mem | head -6
} | tee "$OUT"

