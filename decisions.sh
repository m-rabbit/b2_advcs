#!/bin/bash

# decision making with if statements
# note:
# no parens () no curly's ()
# no = or == or < or > or <= or >=

clear
echo "Practice program to help me learn and understand if decision making"
echo 'Sometimes called a "sandbox" to try things out -- like -gt instead of > that we used in Java'

# when you create a variable, do not use the $ -- that comes later
# unlike java, do 'type' you var -- that is do not use int, String, float, ...
# BASH figures out the type by the context 

# count=43
echo "Please enter a number (integer)"
read count
echo "You have entered $count"

# use [] instead of () like you used in Java
# critical: must have spaces around it, otherwise it will fail
# failure notes in BASH are very cryptic, not very helpful
# also note that NO spaces around variables x=10 is good, x = 10 will fail

if [ $count -eq 42 ]
then
echo "42 is correct."
elif [ $count -gt 42 ]
then
echo "Too much."
elif [ $count -lt 42 ]
then
echo "Not enough."
else
echo "wut"
fi

