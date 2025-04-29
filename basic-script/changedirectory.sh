#!/bin/bash
set -x
LEVEL=$1
for ((i = 1; i <= LEVEL; i++))
do
CD=../$CD #Here we need to use "$ with CD to change the directory
done
cd $CD
echo "You are in: "$PWD
exec /bin/bash
