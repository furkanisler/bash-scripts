#!/bin/bash
#Parameters
# Furkan 2022/06/17

#parametreler dosyayı çalıştırmak için yazdığımız komutun devamında yazılan şeylerdir
#Mesela cd yazdıktan sonra dosya adı yazıyoruz ya. dosya adı parametre oluyor
#Script içerisinde $# kaç parametre olduğunu gösterir.
# Script içerisinde #0 scriptin adını gösterir
# Script içerisinde $1 veya $2 veya #3 gibi 1. 2. ve 3. sıradaki parametreleri gösterir
 
# Örnekler yapalım 3 tane parametre yazabiliriz

echo parametre çalışması detaylı bilgi için dosyayı aç.
echo Bu scriptin adı $0 olarak kayıtlıdır.
echo bu script içerisinde $# adet parametre var.
echo Birinci parametre $1 dir
echo İkinci parametre $2 dir
echo Üçüncü parametre $3 tür


# Bir de shift komutumuz var
# Shift komutu parametreleri kaydırır. 2. parametreyi $1e 3.parametreyi $2ye atar
# Bu durumda ise $ 3 kaybolur
# Aşağıdaki örnekte tüm parametreleri $1 kullanarak okuyacağız

echo shift kullanarak sadece dolar1 ile 3 parametreyi yazdıralım
echo 1. parametre $1
shift
echo 2. parametre $1
shift
echo 3. parametre $1

