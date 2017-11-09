#!/bin/bash

echo "::Digite o numero e tecle enter ou para cancelar feche no (X)::

1-Instalar apache2
2-Instalar mysql
3-Instalar php7.0
4-Reiniciar o apache2
5-Instalar Atom-Editor
6-Instalar tudo
7-Instalar Gitkraken
"


read programas

if [ "$programas" = "1" ];
then
   sudo apt-get install apache2 -y

elif [ "$programas" = "2" ];
then
   sudo apt-get install mysql-server -y

elif [ "$programas" = "3" ];
then
   sudo apt-get install php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-gd php7.0-cli php7.0-mysql -y

elif [ "$programas" = "4" ];
then
   sudo systemctl restart apache2

elif [ "$programas" = "5" ];
then
   sudo add-apt-repository ppa:webupd8team/atom -y && sudo apt-get update && sudo apt-get install atom -y

elif [ "$programas" = "6" ];
then
   sudo apt-get install apache2 mysql-server php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-gd php7.0-cli php7.0-mysql -y
elif [ "$programas" = "7" ];
then
    dir_atual=$(pwd)
    dpkg -i $dir_atual/pacotes/gitkraken.deb
fi


echo "Deseja instalar outro programa? [s/n]"
 read programas2

if [ "$programas2" = "s" ];
then
 ./lamp.sh

else
 exit
fi
