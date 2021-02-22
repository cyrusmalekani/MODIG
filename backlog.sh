#!/bin/bash
echo "Started Script"

lines=$(cat /var/loggfil1 | wc -l)

if [ $lines -gt 9 ]
then
   echo 'Move content to Baklog'
   cat /var/loggfil1 >> /var/baklog
   truncate -s 0 /var/loggfil1
else
   echo 'Cleaned'
fi

echo "Executed script"