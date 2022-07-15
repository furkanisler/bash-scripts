#! /bin/bash

# Regular Expressions - Kurallı İfadeler
#Furkan İşler
#2022/07/06

# Shell üzerinde kullanılan bazı ifadelere bakıyoruz
# Önce ifadeleri ve anlamlarını yazayım sonra örneklerle anlarız

#   ^   Bu satır başı demek
#   $   Bu satır sonu demek
#   .   Herhangi bir karakter diyelim
#   *   Kendisinden önceki karakteri tekrarlatır
#   []  Bunun içindeki herhangi bir karakter olabilir
#   [^] İçindeki hariç herhangi bir karakter olabilir
#   |   Bu karakteri örneğin altında anlatayım

echo
echo

# Grep komutuna da bakalım
# Bu komut filtrelemek demek yukarıdaki ifadelerle birlikte kullanacağız


cat 10-arrays.sh | grep ^bu

#Yukarıdaki ifadeyi inceleyelim
# cat komutu zaten dosyanın içeriğini yazdırıyor
# ^bu ifadesi satır başı bu ile başlayan satırları ifade ediyor
# ^ şapka işareti satır başı demekti
# grep ise filtreleme oluyor. Yani ^bu olayını filtrele
# | dik çubuk da ve anlamına geliyor
# Bu durumda yukarıdaki komut o dosyayı seç ve satır başı bu ile başlayanları ayıkla çıktısını al

echo
echo

cat 10-arrays.sh | grep or$

# Yukarıdaki komut ile satır sonu or ile biten satırları bize dökecek

# Yukarıdaki iki örnekte seçtiğimiz o harfler bu ve or küçük harfle yazılı
#Bu durumda dosyadan sadece küçük harfle olanları dökecek önümüze
# Eğer grepten sonra -i koyarsak büyük küçük harf gözetmez

echo

cat 10-arrays.sh | grep -i ^sa

echo

cat 10-arrays.sh | grep -i ir$

echo
echo

cat 10-arrays.sh | grep .se.

# Bu da şu demek dosya içerisinde "se" nin önünde ve arkasında harf olan satırları yaz
# Bir harf de olabilir 5 harf de o önemli değil


echo
echo


cat 10-arrays.sh | grep ^her*


# Bu üstteki komuttan yıldız çıksa ne olduğunu biliyoruz
# Yıldız ne demek
# Yıldız da her de olur he de olur demek
#Yani *dan hemen önceki harf olmayanları da listeler
# -Çok saçma geldi bana açıkçası. Adam o zaman son harfi koymasın
# Ben bunu biraz daha araştırırım.

echo
echo

cat 10-arrays.sh | grep -i ^f...k

#Yukarıda dedik ki f ile başlayan satı
# ama f'den sonra üç tane herhangi harf gelsin sonra da k harfi gelsin

echo
echo


cat 10-arrays.sh | grep den

# Yukarıda den yazdık ama sağına soluna bir şey koymadık ya
# den ifadesi nerede geçerse geçsin demek. Baş son önemli değil


echo
echo


cat 10-arrays.sh | grep sen | grep -v ^sen | grep -v sen$

# bu -v zıtlık katıyor
# ^sen sen ile başlasın demek ya
# Önüne -v getirip -v ^sen de sen ile başlamasın demek
# -v sen$ da sen ile bitmesin demek

echo
echo

cat 10-arays.sh | grep -ic er

# Yukarıda -i zaten biliyoruz büyük küçük farketmez
# -c is bunları yazmak yerine kaç satır olduğunu söyler

echo
echo

cat 10-arrays.sh | grep -in ne

# Yukarıdaki -n de satırların kaçıncı satır olduklarını başlarına yazarak sıralar

echo
echo

