#!/bin/bash
# Aritmetic Operations
#Furkan 2022/06/17

# İşlem yaparken işlemleri çift parantez içerisinde yazıyoruz.
#BİRİNCİ AŞAMA- Int ifadeler
#BİRİNCİ yöntem
# Normal standart 4 işlem ve mod alma operatörlerini int sayılarla kullanacağız.
# İki değişken tanımlayalım

a=12
b=5

echo $(( a+b ))
echo $(( b-a ))
echo $(( a*b ))
echo $(( a/b ))
echo $(( a%b ))

# İKİNCİ yöntem
# Burada expr komutu kullanacağız. Tek parantez yeterli
# Dikkat: İşlem operatörü ile değişken arasına boşluk koy
echo " expr ile işlemler:"
echo $( expr $a + $b )
echo $( expr $b - $a )
echo $( expr $a * $b )
echo $( expr $a / $b )
echo $( expr $a % $b )
echo "çarpma işlemi hata verdi"
echo $( expr $a \* $b )
echo çarpma işlemi düzeldi
# çarpma operatörü kullanırken önüne \ koyacaksın.
# Bu ikinci yöntemde de  50 tane $ kullandık ha
echo
echo
# İKİNCİ AŞAMA- Float ifadeler
echo "FLOAT"

# Burada bc kullanacağız.
echo "10.5+9"
#Yukarıdaki ifadenin çıktısı 10.5+9 olacaktır.
# Ama aşağıdaki gibi bc kullanırsak sonucu görebiliriz
echo "10.5+9" | bc

# İki değişken tanımlayıp o şekilde çalışalım


x=32.4
y=5.8
echo

# Aşağıda işlemleri yaparken scale kullandım. Nasıl kullandığıma dikkat et
# Scale float ifadede virgülden sonra kaç basamak istediğimizi belirtir.
# Farkı görmen için ilk işlemde kullanmadım. Bu durumda bir tane rakamı virgülden sonra gösterir
echo " $x + $y " | bc
echo " scale=3;  $x - $y " | bc
echo " scale=2; $x * $y " | bc
echo " scale=4; $x / $y " | bc
echo " scale=5;$x % $y " | bc

# Aslında float iki sayıyı bölünce kalan olmaz ama yine de yazdım ne çıkacağını görelim.
#Matematiksel polarak iki float ifadenin bölümünden kalan olmaz
echo
echo KAREKÖK ALMA
echo
echo "scale=2;sqrt($x)" | bc -l
# sqrt karekök alma fonksiyonudur
# En sondaki -l ile de sqrt fonksiyonunu kullanacağımız matematik kütüphanesi ekledik

echo
echo KÜP ALMA
echo
echo " scale=3; $y^3 " | bc -l
#Burada da ^işareti kuvvet alma işaretidir.
# Aslında 3 değil de 5 yazsak 5. dereceden kuvvetini almış oluruz
