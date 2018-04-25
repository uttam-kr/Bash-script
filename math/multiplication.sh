#!/bin/bash
echo "Multiplication Script"
if [ $# -ne 2 ] 
then
echo "please enter num1 & num2"
exit 1
fi
a=$1
b=$2
c=$[a*b] 
echo multiplication of $a and $b is $c

