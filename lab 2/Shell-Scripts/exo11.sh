#!/bin/bash

num_lines=$(wc -l < "lectures.txt")
max_title_length=5
comparison_wc=1


for(( count=1; count <= num_lines; count++));
do
    while read line
    do
        lecture_title=$(echo $line | cut -d" " -f2-)
        word_count=$(echo $lecture_title | wc -w)
        if [ $word_count == $comparison_wc]; then
            echo $lecture_title
        fi
    done < "lectures.txt"
    comparison_wc=$comparison_wc+1
done
