#!/bin/bash

while [ 1 ]
do
echo "Directory contains files :"
echo `ls`
echo "enter the file name :"

read a

if [ -e $a ]; then

path=`cat $a`
echo "reads data from a file : $path "

count=0
zmien=0

for b in $path; do
count=`expr $count + 1`
zmien=$(($zmien + $b))
sr=$(echo "scale=2;$zmien/$count" | bc)
done
echo $sr
fi

read -p 'Close the script y/n :' p

case "$p" in
"n") continue;;
"y") exit;;
*) exit;;
esac
done
