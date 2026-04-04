#!/bin/bash
echo "=== Checking all log types ==="
for type in INFO WARNING ERROR
do
  count=$(grep "$type" logfile.txt | wc -l)
  echo "$type count: $count"
done
echo "=== Check complete ==="
