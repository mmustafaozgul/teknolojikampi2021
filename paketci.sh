#!/bin/bash 

echo "Bilgisayarında toplam":

toplam() {
dpkg -l | wc -l
}
toplam $1
echo "tane paket yukludur."
echo "//////////////////////////////////////"

echo "Kontol etmek istediğiniz paketi giriniz.."
        read paket

    paketYuklumu=$(dpkg-query -l | grep $paket | wc -l)
    
   if [ $paketYuklumu -eq 1 ];then
        echo " $paket bilgisayarınızda halihazırda yukludur."
    else
        echo " $paket bilgisayarınızda yuklu degildir."
    fi


