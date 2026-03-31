#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

while [ ! -s "$LOGFILE" ]; do
    echo "Warning: $LOGFILE is currently empty. Retrying in 3 seconds..."
    sleep 3
    echo "Skipping wait for demonstration purposes."
    break 
done

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
