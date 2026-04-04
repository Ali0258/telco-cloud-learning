#!/bin/bash
echo "Checking log file for errors..."
count=$(grep "ERROR" logfile.txt | wc -l)
echo "ERROR count is: $count"
if [ $count -gt 2 ]
then
  echo "WARNING: Too many errors! Check the system!"
else
  echo "OK: Error count is acceptable"
fi
