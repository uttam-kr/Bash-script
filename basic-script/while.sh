#!/bin/bash
# while-read: read lines from a file
echo "enter filename"
read file
while read ; 
do
    printf "%s\n" $REPLY
done < $file
