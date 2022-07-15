#!/bin/bash
# Fonksiyonlar
#Furkan İşler
#2022/07/03

# Bir selamlama fonksiyonu ile başlayalım
# Fonksiyon kalıbı hemen her dilde olduğu gibidir.

function selamla()
{
 echo "Napıyon la değişik "
}

# Bu kadar. şimdi selamla yazarak fonksiyonu çağırabiliriz.

selamla

# Fonksiyon oluştururken başına function yazmamıza gerek yok

mrb()
{
echo "Naber kanks"
}

# Aynı şekilde çağırabiliriz.

mrb

echo
echo

# Karesi alma fonksiyonu oluşturacağım. Ama sayıyı kullanıcı girsin

# Önce fonksiyonu yazacağım

function kare()
{
echo "Sayının karesi: $((sayi*sayi))"
}

# Yukarıda sayı değişkeni kullandık ama sayı değişkeninin değeri yok.

# Bu şekilde fonksiyonu çağırırsak olmaz
#Kullanıcıdan sayı değişkeni alıp sonra fonksiyon çağıralım

echo -en "Bir sayı giriniz: "
read sayi

# Hemen yukarıda sayı değişkeni tanımladık. Şimdi fonksiyonu çağıralım

kare

echo
echo

# Şimdi fonksiyon çağırırken yanında parametre verelim
# Mesela tanışma fonk yapalım
# Fonksiyonu çağırırken bir isim yazalım
# Yazdığımız kişi ile tanışma cümlesi kursun

function tanisma()
{
isim=$1
echo "Merhaba $isim."
}

# tanışma fonk çağırırken yanına adımı yazacağım

tanisma furkan

echo
echo

# Local ve global değişken olayına değinelim
# Bir fonksiyon içerisinde local değişken tanımlarsak o değişken sadece fonksiyon içerisinde geçerli olur.
# Local değişken fonksiyon dışında değiştirilemez.
# Fonksiyon içerisinde tanımladığımız değişken local değilse fonksiyon dışından değiştirebiliriz

# Şimdi bir fonksiyon içerisine biri local diğeri global iki değişkeni parametre ile tanımlayalım. Sonra fonksiyonu çağıralım.

function arrays()
{
echo "Deneme $a"
#Denemeyi aşağıdaki örnek için yazdım
local a=$1
b=$2

echo "Fonk içinden $a bu"
echo "Bu da fonk içinden $b"
}

# Fonksiyonu çağırmadan değişkenler tanımlanmaz.

arrays mahmut sinan

# değişkenler tanımlandı

echo "fonk dışından ==>Selam $a"
echo "fonk dışından ==>Naber $b"

#Gördüğün gibi fonk dışında localdeğişkeni göremedi

# Bir de a ve be değişkenlerini tanımlayalım.
#Sonra yine parametre ile fonksiyon çağıralım
#Sonra a ve b değişkenlerini tekrar çağıralım.

echo
echo

a=Sansar
b=Selim

echo "yeni tanım==> $a"
echo "yeni tanım==> $b"

arrays Hokkabaz Hayri

echo "fonk sonrası $a"
echo "fonk sonrası $b"

#Son durumda a değişkeni hala sansar iken b değişkeni Hayri oldu.
#Çünkü fonk iöindeki a değişkeni local
#Ayrıca deneme sansar yazdığını görmüşsündür. Fonk içinden fonk dışındaki değişkene ulaşabiliyoruz..
#Ayrıca deneme sansar yazdığını görmüşsündür. Fonk içinden fonk dışındaki değişkene ulaşabiliyoruz.
