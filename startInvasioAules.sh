#!/bin/bash
#Creem carpeta pokemon i accedim
mkdir invasioAulesPokemon
cd invasioAulesPokemon
#Cal baixar box?
if [ `(vagrant box list | grep ubuntu/trusty64 | wc -l)`  -eq 0 ] ;
then
    mkdir osImage
    cd osImage
    vagrant box  add ubuntu/trusty64
    cd ..
fi
#Directori de treball
if [ ! -d "vagrant_data" ];
then
    mkdir vagrant_data
fi
#Copiar
cp ../invasioAules/pikachu vagrant_data/pikachu
cp ../invasioAules/script.sh .
cp ../invasioAules/Vagrantfile .
#Iniciar laboratori
vagrant up >> vagrantout.txt
rm vagrantout.txt
#Iniciar hunter
vagrant ssh teamRocket
