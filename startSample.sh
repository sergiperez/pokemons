#!/bin/bash
#Es dóna per suposat que hi ha Virtualbox com a proveïdor de màquines virtuals
#Cal instal·lar Vagrant?
#Creem carpeta pokemon i accedim
mkdir samplePokemon
cd samplePokemon
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
#Iniciar laboratori
cp ../sample/pikachu vagrant_data/pikachu
cp ../sample/script.sh script.sh
cp ../sample/Vagrantfile Vagrantfile
vagrant up >> vagrantout.txt
rm vagrantout.txt
#rm vagrant_data/pikachu
#rm script.sh
#rm -fr ../sample
#Iniciar hunter
vagrant ssh teamRocket
