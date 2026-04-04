#!/bin/bash
echo "=== Log Analysis Report ==="
echo "Total lines:"
wc -l logfile.txt
echo "ERROR count:"
grep "ERROR" logfile.txt | wc -l
echo "WARNING count:"
grep "WARNING" logfile.txt | wc -l
echo "=== Done ==="
