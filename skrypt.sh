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

if [ "$1" == "--help" ]; then
    echo "Available options:"
    echo "--date    : Display the current date"
    echo "--logs    : Create 100 log files"
    echo "--logs N  : Create N log files"
    echo "--help    : Display this help message"
fi
