#!/bin/bash

#Furkanisler
#Dosya Doğrulama operatörleri
# 2022/06/28

# Bu operatör ile dosya yazılabilir mi, okunabilir mi, mevcut mu, içi dolu mu boş mu şeklinde doğrulanması yapılır.

# Burada bazı sembollerin anlamlarını bilelim. Kullanımını sonra görelim

# -e exist(dosya var mı yok mu)
# -f dosya regular mı
# -s dosya dolu mu boş mu
# -d dosya klasör mü
# -r readable mı
# -w writable mı
# -x exacutable mı

# bunları if operatörü içinde kullanınca true or false verir

echo -en " Bir dosya adı girin: "
read dosya

if [ -e $dosya ]
then
echo "$dosya var"
else
echo "$dosya yok"
fi
if [ -f $dosya ]
then
echo "$dosya regular"
else
echo "$dosya irregular"
fi

# böyle diğerlerini de yapabiliriz
