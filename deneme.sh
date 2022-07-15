#!/bin/bash

limit=7
for ((i=1;i<=limit;i++)) do
echo -ne "i=$i\t"
done

# Klasik whilwe döngüsünü yazdıramadım
echo -e "\n"
# Belirli bir sayı aralığını yazdırmak

for i in [ 0..5 ]; do
echo -ne "i=$i\t"
done


# Belirli bir sayı aralığını atlayarak yazdıralım
echo -e "\n"


for k in [ 0..10 ]; do
echo -ne "k=$k\t"
done

echo -e "\n"

a=1
while [ $a -le 5 ]
do
 echo "naber la $a defa"
 a=$(($a+1))
done


