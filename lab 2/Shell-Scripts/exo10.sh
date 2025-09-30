#!/bin/bash

found=0
while read line
do 
    lecture_title=$(echo $line | cut -d" " -f2-)
    word_count=$(echo $lecture_title | wc -w )
    if [ $word_count -gt 4 ]; then 
        echo "$lecture_title"
        found=1
    fi
done < "$1"

if [ $found == 0 ]; then
    echo "No lecture found"
fi