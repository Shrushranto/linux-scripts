#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi
if [ ! -f "$1" ]; then
  echo "Error: file '$1' not found"
  exit 1
fi

echo "Total requests: $(wc -l < "$1")"
echo "404 errors: $(awk '$9 == 404' "$1" | wc -l)"
echo "Top 3 IP addresses:"
awk '{print $1}' "$1" | sort | uniq -c | sort -rn | head -3
