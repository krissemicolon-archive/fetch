#!/bin/sh
. /etc/os-release

# Getting Information
HOSTNAME="$(hostname 2>/dev/null)"
KERNEL="$(uname -sr 2>/dev/null)"
CPU="$(uname -p 2>/dev/null)"
UPTIME="$(uptime -p 2>/dev/null | sed 's/up //')"

# Printing Information
echo "$USER@$HOSTNAME"
echo "------------------"
echo "OS: $PRETTY_NAME"
echo "Kernel: $KERNEL"
echo "Uptime: $UPTIME"
echo "CPU: $CPU"

