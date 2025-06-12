#!/bin/bash

# Define the array
numbers=(10 5 23 8 42 15 7)

# Initialize max_number with the first element of the array

max_number=${numbers[0]}


for i in "${numbers[@]:1}"; do

  if (( i > max_number )); then
    max_number=$i 
  fi
done

echo "The numbers in the array are: ${numbers[*]}"
echo "The biggest number is: $max_number"