md invasioAulesPokemon
cd invasioAulesPokemon
md osImage
cd osImage
vagrant box  add ubuntu/trusty64
cd ..
md vagrant_data
copy ..\invasioAules\pickachu vagrant_data\pikachu
copy ..\invasioAules\script.sh script.sh
copy ..\invasioAules\Vagrantfile Vagrantfile
vagrant up
vagrant ssh teamRocket
