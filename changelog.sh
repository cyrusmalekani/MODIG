#!/bin/bash

changelog=/var/loggfil1
row=1

echo "Exectuing"

while inotifywait -e modify /var/testfil1;
do
    echo $row':' $(date) '- The file has been changed.' >> $changelog
    row=$(($row+1))

    if [ $row -gt 9 ]
    then
        row=1
    fi

    sleep 10
echo "Done"
done
