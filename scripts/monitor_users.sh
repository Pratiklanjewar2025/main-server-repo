#!/bin/bash

# Get active connections count
ACTIVE_CONNECTIONS=$(netstat -an | grep ':80' | wc -l)

# Get CPU usage percentage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

if [[ "$ACTIVE_CONNECTIONS" -gt 500 ]] || [[ "$(echo "$CPU_USAGE > 90" | bc -l)" -eq 1 ]]; then
    echo "Triggering autoscaling..."
    bash scripts/trigger_autoscaling.sh
else
    echo "Server is stable."
fi
