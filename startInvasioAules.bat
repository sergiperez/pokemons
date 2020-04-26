#!/bin/bash
#Creem carpeta pokemon i accedim
md invasioAulesPokemon
cd invasioAulesPokemon
#Cal baixar box?
md osImage
cd osImage
vagrant box  add ubuntu/trusty64
cd ..
md vagrant_data
#Copiar
copy ..\pickachu vagrant_data\pikachu
copy ..\script.sh
copy ..\Vagrantfile .
#Iniciar laboratori
vagrant up
#Iniciar hunter
vagrant ssh teamRocket
