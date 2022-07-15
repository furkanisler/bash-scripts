#!/bin/bash
# loops
# Furkan 2022.06.19

# Burada döngüleri göreceğiz ilk önce while döngüsü ile başlıyoruz.

#       WHILE
echo While döngüsü örneği :
# While döngüsünde içine yazdığın koşul sağlandığı sürece döngü çalışır

echo bu örneğin gerçekleşmesi için programı çalıştırırken parametreler girmeniz lazım
# Aşağıdaki kod girilen tüm parametleri gösterecek

index=0
while [ "$#" -ne "0" ]
do
	index=$(($index+1))
	echo "$index" nolu parametre: $1
	shift
done

# -ne eşit değil iken demektir
echo -e "\n\n"

#                 FOR DÖNGÜSÜ
echo FOR DÖNGÜSÜ ÖRNEĞİ AŞAĞIDADIR
echo -e "\n 1. Örnek: \n"

# For ile birkaç örnek yapacağız. Farklı yazım çeşitlerine değineceğiz.

for (( i=0; i<=14; i++ ))
do
if [ $i -ge 5 -a $i -lt 14 ]
then
continue
fi
echo "$i mumdur."
done

# Bu örnekte continue da kullandık
# continue ile belirtilen aralıktaki ifadeyi atlıyor. Döngüden çıkmıyor.
# Belirtilen continue aralığı bittiğinde döngüye kaldığı yerden devam ediliyor.

echo -e "\n 2. Örnek: \n"

for i in 1 2 3
do
echo "$i"
done
echo -e "\n 3. örnekte döngü ile komut yazdıracağız.\n"

for i in ls pwd
do
echo "=======>>>>  $i"
$i
done

echo -e "\n 4. örnek bash version 3ten büyükse çalışır. \n"

for i in {1..10..2}
do
echo $i
done

echo " Eğer bash versiyonu yetersiz olduğu için döngü çalışmazsa dosya içeriğine girip döngünün nasıl yazıldığına bakabilirsiniz."

# 4. örnekte {1..10} derken 1den 10a kadar yazdırır
# {1..10..2} dediğimizde en sondaki sayı atlama değerini gösterir. yani birden başlayıp 2 atlayarak yazdıracaktır

echo -e "\n\n"

#              SELECT DÖNGÜSÜ
echo SELECT DÖNGÜSÜ ÖRNEĞİ AŞAĞIDADIR
#genelde case ile birlikte kullanılır.
# İlk başta normal kullanalım sonra case ile kullanırız

echo ilk örnek

select sehirler in Antalya Izmir Mugla Istanbul
do
echo "$sehirler seçildi"
break
done

# Yukarıda sehirler değişkeni olşturduk. Aynı for i in ls pwd yaptığımız gibi i değil sehirler dedik.
#Ancak burada o yazdığımız antalya izmir muğla istanbul önümüze sıralanıyor. Biz de onlardan birini seçtikten sonra seçtiğimiz şeh,r seçildi olarak karşımıza geliyor

# Bunu bir de case kalıbı ile kullanalım.
# BU yazacağım örnekta case daha karmaşık görünse de büyük kodlarda işe yarar. Kullanım kolaylığı sağlıyor.

select iller in Antalya Mugla Izmir
do
	case $iller in
	Antalya )
	echo "$iller seçildi";;
	Mugla )
	echo "$iller seçildi";;
	Izmir )
	echo "$iller seçildi";;
	* )
	echo " 1-3 arası bir seçim yapın";;
	esac
break
done

# Bu select döngüsünde break komutunu kullandık
# Eğer kullanmasaydık döngü sürekli çalışır sürekli seçim yapmamız gerekirdi.


echo -e "\n\n"


#        UNTIL DÖNGÜSÜ KULLANIMI
echo UNTIL DÖNGÜSÜ ÖRNEĞİ KULLANIMI AŞAĞIDADIR

#Until döngüsü while gibi yazılır ama burada koşul sağlanmazsa döngü çalışır
#Koşul sağlandığı an döngü durur

my_variable=1

until [ "$my_variable" -gt "10" ]
do
	echo "$my_variable"
	my_variable=$((my_variable+1))
	sleep 1
done

# sleep ifadesi adımları yanında yazan sayının saniyesi kadar bekletiyor.
# Yukarıdaki örnekte 1den 10a kadar yazacak
