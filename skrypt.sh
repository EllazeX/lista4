#!/bin/bash

if [ "$1" == "--date" ]; then
    date
fi

if [ "$1" == "--logs" ]; then
    num_logs=${2:-100}
    for ((i=1; i<=num_logs; i++))
    do
        filename="log_$i.txt"
        echo "File number: $i" > $filename
        echo "Script name: $0" >> $filename
        echo "Date: $(date)" >> $filename
    done
fi
