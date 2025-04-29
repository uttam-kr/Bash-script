#!/bin/bash
echo "Substraction Script"
if [ $# -ne 2 ] 
then
echo "please enter num1 & num2"
exit 1
fi
a=$1
b=$2
c=$(( a - b ))
echo substraction of $a and $b is $c

