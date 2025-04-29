#!/bin/bash

echo "enter number's from command line"
if [ $# -ne 2 ]
then
echo "please enter numbers"
exit 1
fi

a=$1
b=$2

c=$[a/b]

echo division of numbers = $c
 
