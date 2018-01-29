#!/bin/bash

echo 'Please enter your CIDR number.'
read cidr

# handle edge cases
if [ "$cidr" -gt 32 ] || [ "$cidr" -lt 0 ] ; then
echo "invalid input";
fi

i=0;
while [ "$i" -lt 32 ] ;
do

if [ $(($i%8)) == 0 ] && [ "$i" != 0 ] && [ "$i" != 32 ] ; then
printf ".";
fi

if [ "$i" -lt "$cidr" ] ; then
printf "1";
else
printf "0";
fi

i=$(expr $i + 1);

done

echo -e "\n"
