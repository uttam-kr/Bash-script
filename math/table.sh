#!/bin/bash
echo "enter number for print table"
read n


for i in {1..10}
do
	echo "$n * $i = $(( $i * $n))"
done
