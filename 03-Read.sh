#!/bin/bash
#Read kullanımı
#FurkanIsler
#2022/06/26
#Read komutu ile değişkenleri dışarıdan alabiliriz

echo "Merhaba. Adınız nedir?"
read ad
echo "Hoş geldin $ad"

# farklı bir şekilde de kullanabiliriz.
read -p 'anne adını girin:' ana
echo "$ana hanıma selam söyleyin"


#Kullanıcıdan şifre alırken girilen şifrenin görülmemesini de sağlayabiliriz
# Mesela

read -sp 'Hele bi şifre gir kimseye göstermeden: ' sifre
#Şimdi bir echo komutu gireceğiz. Bu sayede satır atlatacak
echo
echo "Kimse görmedi ama şifren bu: $sifre"

#read komutunun yanında metin yazarken tek tırnak kullandığımıza dikkat et
# -p ile read komutunun yanındaki metnin devamına giriş yapabildik
#-s ise girişi sansürleyerek alır
