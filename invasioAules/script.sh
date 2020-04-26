#!/bin/bash
#pokemon1
i=$(($2-10134))
if [ $i -lt 10 ];
then
   pokemon1="00$i.txt"
elif [ $i -gt 9 ] && [ $i -lt 100 ];
then
   pokemon1="0$i.txt"
else
   pokemon1="$i.txt"
fi
#pokemon2
i=$(($3-10134))
if [ $i -lt 10 ];
then
   pokemon2="00$i.txt"
elif [ $i -gt 9 ] && [ $i -lt 100 ];
then
   pokemon2="0$i.txt"
else
   pokemon2="$i.txt"
fi
#pokemon3
i=$(($4-10134))
if [ $i -lt 10 ];
then
   pokemon3="00$i.txt"
elif [ $i -gt 9 ] && [ $i -lt 100 ];
then
   pokemon3="0$i.txt"
else
   pokemon3="$i.txt"
fi
useradd -m pikachu
echo -e "aa:bb:cc:dd:ee:ff\naa:bb:cc:dd:ee:ff" | passwd pikachu
cd /home/pikachu
wget http://www.fiikus.net/asciiart/pokemon/134.txt -O 111.txt
wget http://www.fiikus.net/asciiart/pokemon/001.txt -O 22.txt
if [ $(($1)) -ge 1 ];
then
   nc -l $2 -k &
  wget http://www.fiikus.net/asciiart/pokemon/$pokemon2 -O $2.txt
fi
if [ $(($1)) -ge 2 ];
then
  nc -l $3 -k &
  wget http://www.fiikus.net/asciiart/pokemon/$pokemon2 -O $3.txt
fi
if [ $(($1)) -ge 5 ];
then
  sed -i "s/Port 22/Port $4/g" /etc/ssh/sshd_config
  sudo service ssh restart
  wget http://www.fiikus.net/asciiart/pokemon/$pokemon1 -O $4.txt
  nc -l $5 -k &
  wget http://www.fiikus.net/asciiart/pokemon/$pokemon3 -O $5.txt
fi
if [ $1 -eq 0 ];
then
  route delete default
  route add default gw 192.168.10.11 eth1
fi


