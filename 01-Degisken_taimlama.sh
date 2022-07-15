#!/bin/bash.mb
#variables
# furkan isler
#2022/06/16

echo "değişken tanımlama çalışması"
echo "detay için içeriğe bakın."

#author adında bir değişken tanımladık bu değişken benim adım olsun

author="Furkan İşler"

#pwd komutunun vereceği sonucu dir değişkenine atadık
#Komutları değişkene atarken komutların önüne $ koymalısınız

dir=$(pwd)

#İki değişkeni birleştirerek concet değişkenine atadık

concet="$author$dir"

#aşağıda da değişkenlerimizi yazdıralım

echo Bu scripti yazan kişi: $author
echo Bulunduğun dizin: $dir
echo birlikte bir daha söylüyorum: $concet

# İstersek değişkenimizin değerini değiştirebiliriz
echo yazar değişsin
author="Frkn."
echo Yazar: $author
