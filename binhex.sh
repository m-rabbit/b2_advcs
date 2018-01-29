#!/bin/bash

clear
echo 'Welcome to my hex bin dec converter! Created by Thea S. 14 Sept 2017'

echo -e '\n11110101 to hex: '
echo "obase=16; ibase=2; 11110101" | bc

echo -e '\nFF to dec: '
echo "obase=A; ibase=16; FF" | bc

echo ie '\nFA to bin: '
echo "obase=2; ibase=16; FA" | bc

echo -e '\n1111 to hex: '
n=1111
echo "obase=16; ibase=2; $n" | bc

echo -e "\nvar 16 to bin: "
n=16
echo "obase=2; ibase=A; $n" | bc

echo -e '\nvar AA to bin: '
n=AA
echo "obase=2; ibase=16; $n" | bc

