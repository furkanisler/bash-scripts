#!/bin/bash
#constants
# Furkan İsler
# 2022/06/16

#constants sabitler demektir.
#Tamamen güzel ve okunaklı olması için sabitler büyük harfle değişkenler küçük harfle yazılır
#constant tanımlarken başına readonly yazılır

readonly MY_CONSTANT="Ailem"
echo Benim değişmezim: $MY_CONSTANT

#Şimdi sabiti değiştirmeye çalışalım
MY_CONSTANT="lulululu"
#Bu üstteki satır hata verecek
echo değişmezimle oynayamazsın
echo Değişmezi bir daha gör $MY_CONSTANT
readonly MY_CONSTANT="Denedim"
echo Gene gör $MY_CONSTANT
echo -e "\n\n gördüğün gibi hata verdiği yerlerde biz sabiti değiştirmeye çalışmıştık. O yüzden hata aldık."

