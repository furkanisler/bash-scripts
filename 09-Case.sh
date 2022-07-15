#!/bin/bash
#Case kullanımı
#Furkan İşler
#2022/06/30

echo -en " Kaç çocuğunuz var? ==> "
read a
# a çocuk sayısı
masraf=0
case $a in
	"1" )
	masraf=300*$a;;
	"2" )
	masraf=300*$a;;
	* )
	echo " Demek ki gezme tozma benzin masrafın var";;
esac

echo "Çocuk masrafınız $masraf tl'dir"
echo "İyi ki varlar"
