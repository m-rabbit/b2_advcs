#!/bin/bash

clear
echo -e "\nTesting...testing...while loop"

# My task! to this loop, add echo "please enter a hex number"
# my program shows the binary conversion
# and loops 10 times 

getConvert="Y"
while [ $getConvert == "Y" ] ;
do
echo please enter a hex number;
read number;
echo "obase=2; ibase=16; $number" | bc;
echo -e "\nWould you like to convert another number?";
read getConvert;
done
echo Thanks!
