#!/bin/bash
#If Else Elif
#Furkan 2022/06/22


# if yapısında if ile parantez işaretleri ile parantezin arasına yazdıkların ile arasında boşluk bırak
# < > işaretleri kullanacaksan iki parantez içerisinde kullan
# -le -gt kullanacaksan köşeli parantez içerisinde kullan

#şunların anlamı önemli:
# -eq: eşit ise   -nq: eşit değil ise
# -gt: büyük ise   -ge: büyük ve eşit ise
# -lt: küçük ise   -le: küçük ve eşit ise

# String karşılaştırmalarda < > = işaretleri ikili köşeli parantez içinde kullanılır  [[ "naptın" < "nettin" ]] gibi
# stringlerde alfabetik sırada önce gelen küçüktür

# Kullanım yapısı bu şekildedir.
no=8

if (( no <= 10 ))
then
echo ifade doğru
fi


# Şayet elif veya else kullanacaksak fi ile kapanışı hepsinden sonra yaparız.

read -p 'Enter your age:' age

if [ "$age" -lt 12 ]
then
echo "you are a child"
elif [ "$age" -ge 12 ] && [ "$age" -lt 19 ]
then
echo " you are a teenage"
else
echo " you are an adult"
fi

# Yukarıda and operatörünü nasıl kullandığıma dikkat et
# Ayrıca aşağıdaki gibi de yazılsa sıkıntı olmazdı.
# [ "$age" -ge 12 -a "$age" -lt 19 ]
# [[ "$age" -ge 12 && "$age" -lt 19]]
# Aynı şekilde or operatörü de kullanılır. || ya da -o  ile kullanılır
