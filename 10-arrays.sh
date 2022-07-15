#!/bin/bash

#array-diziler
#Furkan İşler
#2022/07/01

# Diziyi oluştururken parantez içerisinde tek tırnak içinde
# aralarında boşluk bırakarak yazıyoruz. Virgül vs yok

Ailem=( 'Hbb' 'Sare' 'Ece' )
#Parantezlerin içinde boşluklara dikkat et
# Her proglama dilinde olduğu gibi ilk eleman 0. indextir.

#Aşağıda dizinin tüm elemanlarını gösterelim. Bunu @ işareti ile yapıyoruz.

echo "Ailem: ${Ailem[@]}"

# Gördüğün gibi burada küme parantezi ve köşeli kullandık

# Ama Ailemden önce ! koysaydık. Dizinin index sırasını gösterirdi

echo "Dizinin index sırası: ${!Ailem[@]}"

# Ünlem yerine # koyarsak dizinin eleman sayısını verir

echo "Biz ${#Ailem[@]} kişilik bir aileyiz"

echo "Eşim ${Ailem[0]}"

# MEsela ailede ben de varım. Kendimi ekleyeyim
#Dizinin 3. indexi boş

Ailem[3]='Ben'
# Bu kadar. Yazdırıp görelim
echo "${Ailem[@]}"

hiyarlar=( 'Ali' 'Veli' 'Hasan' 'Coşan' )
# Yukarıdaki dizide Veli 1. index. Bunu çıkaralım
#Çıkardıktan sonra dizinin index numaralarını yazdıralım
# unset komutu ile index nosunu yazarak çıkartıyoruz

unset hiyarlar[1]
echo "Hıyarlar ${!hiyarlar[@]}"

# Gördüğün gibi 1 nolu index boş duruyor.
