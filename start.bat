md pokemonSample
cd pokemonSample
md osImage
cd osImage
vagrant box  add ubuntu/trusty64
cd ..
md vagrant_data
copy ..\sample\pikachu vagrant_data\pikachu
copy ..\sample\script.sh script.sh
copy ..\sample\Vagrantfile Vagrantfile
vagrant up
del script.sh
cd vagrant_data
del pikachu
vagrant ssh teamRocket
