
#!/usr/bin/env bash

set -u

echo "================================"
echo "       LINUX SYSTEM INFO"
echo "================================"

echo
echo "Date and time:"
date

echo
echo "Operating system:"
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "$PRETTY_NAME"
else
    echo "OS information unavailable"
fi

echo
echo "Kernel:"
uname -r

echo
echo "Uptime:"
uptime -p

echo
echo "Memory usage:"
free -h

echo
echo "Disk usage:"
df -h /

echo
echo "Network addresses:"
hostname -I

echo
echo "================================"
echo "          REPORT END"
echo "================================"
