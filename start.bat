md pokemonSample
cd pokemonSample
md osImage
cd osImage
vagrant box  add ubuntu/trusty64
cd ..
md vagrant_data
copy ..\sample\pikachu vagrant_data\pikachu
cp ..\sample\script.sh script.sh
cp ..\sample\Vagrantfile Vagrantfile
vagrant up
cd vagrant_data
del pikachu
del script.sh
vagrant ssh teamRocket