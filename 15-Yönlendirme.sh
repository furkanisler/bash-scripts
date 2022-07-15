#! /bin/bash
# YÖNLENDİRME
# 2022/07/05


# Burada shell ğzerinde girdiğimiz komutların çıktısını dosyaların içerisine aktarma olayına değineceğiz

# Şimdi komutların çıktısı gayet normal bir şekilde de olabilir.
# Komutların çıktısı hata da verebilir.
# Hatta çıktıların bazıları hata bazıları normal de olabilir.

# Bu çıktılarınn istersek sadece hatasız olanları;
# istersek sadece hatalı olanları;
# istersek de tümünü dosya içerisine yazdırabiliriz.

# Sadece hatasızları yazdırmak için
# "komut" > "dosya adı"

# Sadece hatalıları yazdırmak için
# "komut" 2> "dosya adı"

# Hem hatalı hem hatasız yazdırmak için
# "komut" &> "dosya adı"

# Komut ve dosya adlarını tırnak içinde yazmayız.
# ben belli olsun diye tırnak kullandım.

# Bir de bu şekilde yazdırıyoruz ya tekrardan aynı dosyaya çıktı alacak olursak üztüne yazar
# En son kaldığı yerden devam etmesi için > işaretini iki tane yaparız. Yani >> kıllanırız.
 


