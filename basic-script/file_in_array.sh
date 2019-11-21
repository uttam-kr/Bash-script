#!/bin/bash
declare -a myarray
let i=0
while IFS='' read -n1 c; do
    myarray[i]="${c}" # Populate array.
    ((++i))   
done < "$1"
echo "${#myarray[@]}"
echo "${myarray[@]}"




#declare -a uttam
#let i=0
#while IFS='' read -n1 c;
#	do#
#		uttam[i]="${c}"
#		((++i))
#	done < "$1"
#	echo "${#uttam[@]}"
#	echo "${uttam[@]}"