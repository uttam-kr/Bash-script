#!/bin/sh
 echo "Enter a file name"
read file_name
 
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
 
new_fileName=$file_name.$current_time
echo "New FileName: " "$new_fileName"
 
#cp $file_name $new_fileName
echo "You should see new file generated with timestamp on it.."

