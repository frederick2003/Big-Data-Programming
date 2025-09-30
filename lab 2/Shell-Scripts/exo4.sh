#!/bin/bash

if [ $# -eq 1 ]; then 
    if [ -s "$1" ]; then 
        echo "File isn't empty"
    else
        echo "File doesnt exist or is empty is empty"
    fi
else
    echo "Please enter a filename"
fi
