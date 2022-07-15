#! /bin/bash

# Shell tırnak kullanımları
# Furkan İşler
# 2022/07/05


# Shell içerisinde tırnak işaretlerinin hangi amaçlarla kullanımlarına bakıyorum

# Shell içerisinde kullanım olduğu için illa script içerisinde yazmaya gerek yok

#Derli toplu olsun diye burada yazıyorum

# Her örnek tek tek shell içerisinde yazılıp denenebilir.

# Zaten 3 tane tırnak var çok da şey etmeye gerek yok

# Ters tırnak, tek tırnak, çift tırnak

clear
echo;echo

echo -en "========>>>>>    TERS TIRNAK    <<<<<======="

echo
echo

# Bunun nasıl yapıldığı pek bilinmez.

# Bir çok klavyede Altgr+, ile yapılıyor.

# Ters tırnak içerisine sadece komut ifadeleri yazılıyor

icerik=`ls`
echo $icerik



echo -e "\n\n\n\n"

echo -e "=======>>>>>    TEK TIRNAK    <<<<<======="

echo
echo

# Tek tırnak içerisine ne yazılırsa yazılsın yorumlamadan çıktı verir

# tek tırnak içerisine yazdığın komut falan filan düz metindir.

echo 'Bulunduğun dizin: `pwd`'

# Yukarıdaki pwd komutu ters tırnak içinde olduğu için çalışırdı ama o da tek tırnak içerisinde olduğu için komutu yorumlamadı.

echo -e "\n\n\n\n"
echo -e "=======>>>>>    ÇİFT TIRNAK    <<<<<======="

echo
echo

#Çift tırnak içerisindeki ifadeyi yorumlayarak çıktı verir

# Tek tırnak içerisinde yazdığım şeyi aynen çift tırnak içerisinde yazacağım

echo "Bulunduğun dizin: `pwd`"

# Şimdi göreceksin ki bulunduğun dizini sana verecek
# Çünkü çift tırnak içerisindeki her şey yorumlandı
# Orada komut olduğu farkedildi ve uyguladı
# Lakin tek tırnak bunu yapmaz dostum
