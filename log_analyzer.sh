#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}

COUNT=0

echo "============================================================"
echo "          Log File Analyzer"
echo "============================================================"
echo ""

if [ -z "$LOGFILE" ]; then
    echo "  ERROR: No log file specified."
    echo "  Usage: $0 /path/to/logfile [keyword]"
    echo "  Example: $0 /var/log/syslog error"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "  ERROR: File '$LOGFILE' not found."
    exit 1
fi

if [ ! -s "$LOGFILE" ]; then
    echo "  WARNING: File '$LOGFILE' is empty."
    echo "  Nothing to analyze."
    exit 0
fi

echo "  Log file : $LOGFILE"
echo "  Keyword  : '$KEYWORD'"
echo "  Scanning..."
echo ""

MATCHES_FILE=$(mktemp)

while IFS= read -r LINE; do

    if grep -iq "$KEYWORD" <<< "$LINE"; then
        COUNT=$((COUNT + 1))
        echo "$LINE" >> "$MATCHES_FILE"
    fi

done < "$LOGFILE"

echo "------------------------------------------------------------"
echo "  SUMMARY"
echo "------------------------------------------------------------"
echo "  Keyword '$KEYWORD' found $COUNT time(s) in the log file."
echo ""

if [ "$COUNT" -gt 0 ]; then

    echo "  Last 5 matching lines:"
    echo "  ............................................"

    tail -5 "$MATCHES_FILE" | while IFS= read -r MATCH_LINE; do
        echo "  > $MATCH_LINE"
    done

else
    echo "  No lines matching '$KEYWORD' were found."
fi

rm -f "$MATCHES_FILE"

echo ""
echo "============================================================"
