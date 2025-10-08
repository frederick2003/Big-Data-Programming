#!/bin/bash
# file name is provided as the first parameter
input="titanic.dat.txt"

while IFS= read -r line
do 
    class=$(echo "$line" | cut -c1)
    age=$(echo "$line" | cut -c10)
    sex=$(echo "$line" | cut -c19)
    survived=$(echo "$line" | cut -c28)

    mysql -D "titanicDatabase" -e "insert into titanic values($class,$age,$sex,$survived)"
done < "$input"