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
cd vagrant_data
cd ..
vagrant ssh teamRocket
