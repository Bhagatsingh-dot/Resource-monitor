#!/bin/bash

# Ensure the correct PATH is set (important for cron jobs)
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Define threshold for CPU usage
CPU_THRESHOLD=80
LOGFILE="/tmp/mail_error.log"

# Get the top process consuming CPU
cpu_usage=$(ps -eo pid,%cpu,cmd --sort=-%cpu | awk 'NR==2 {print $2}')
top_process=$(ps -eo pid,%cpu,cmd --sort=-%cpu | awk 'NR==2 {print $3}')

# Check if CPU usage is above threshold
if (( $(echo "$cpu_usage > $CPU_THRESHOLD" | bc -l) )); then
    MESSAGE="⚠️ High CPU Usage Alert ⚠️

A process is consuming high CPU resources.

Process: $top_process
CPU Usage: $cpu_usage%

Please investigate this issue."

    echo -e "$MESSAGE" | /usr/bin/mail -s "⚠️ CPU Usage Alert on $(hostname)" b0900075@gmail.com 2>> "$LOGFILE"

else
    MESSAGE="✅ Everything is running fine on $(hostname).

CPU usage is normal."
    
    echo -e "$MESSAGE" | /usr/bin/mail -s "✅ System Status: All Good" b0900075@gmail.com 2>> "$LOGFILE"
fi

