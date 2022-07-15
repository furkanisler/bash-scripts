#!/bin/bash
# Dosyaya bir şeyler yazma
# Furkan işler
# 2022/06/29

# Bir dosya seçelim. var mı regular mı writable mı kontrol edelim
# eğer öyle ise yazı yazalım. değilse uyarı verelim
# Dosya ismini kullanıcı versin

echo -en "Yazmak istediğin dosyanın adını gir: "
read dosya

if [ -e $dosya ]
then
	if [ -f $dosya ]
	then
		if [ -w $dosya ]
		then
		echo " Yazmayı bitirmek için Ctrl+C bas"
#aşağıdaki komut ile terminal üzerinden dosya içine yazı yazabiliyoruz
		cat >> $dosya
		else
		echo " $dosya yazdırılabilir değil."
		fi
	else
	echo " $dosya düzenli değil."
	fi
else
echo " $dosya mevcut değil."
fi

# Bunları yaparken dosya istenen özellikte değilse özelliği ekleme işlemini de yapabilir ve yazdırabiliriz.
