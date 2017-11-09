#!/bin/bash

programas=1

permissao=$(whoami)
if [ $permissao != "root" ]; then
  echo -e "\033[1;37mExecute o script como root\033[m"
  sleep 5
  exit
fi
while [[ "$programas" != "7" ]]; do
clear
echo -e "::Digite o numero e tecle enter ou para cancelar feche no (X)::

\033[0;34m1) \033[0m Instalar apache2
\033[0;34m2) \033[0m Instalar mysql
\033[0;34m3) \033[0m Instalar php7.0
\033[0;34m4) \033[0m Instalar Atom-Editor
\033[0;34m5) \033[0m Instalar tudo
\033[0;34m6) \033[0m Instalar Gitkraken
\033[0;31m7) \033[0m Sair
"


read programas

if [ "$programas" = "1" ];
then
   sudo apt-get install apache2 -y #instala o apache
   chmod 777 -R /var/www/html # cria o atalho da www
   ln -s /var/www/html www

   echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
   read -p ""
   echo " "

elif [ "$programas" = "2" ];
then
   sudo apt-get install mysql-server -y
   echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
   read -p ""
   echo " "

elif [ "$programas" = "3" ];
then
   sudo apt-get install php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-gd php7.0-cli php7.0-mysql -y
   sudo systemctl restart apache2

   echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
   read -p ""
   echo " "

elif [ "$programas" = "4" ];
then
   sudo add-apt-repository ppa:webupd8team/atom -y && sudo apt-get update && sudo apt-get install atom -y
   echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
   read -p ""
   echo " "
elif [ "$programas" = "5" ];
then
   sudo apt-get install apache2 mysql-server php7.0 libapache2-mod-php7.0 php7.0-mcrypt php7.0-curl php7.0-gd php7.0-cli php7.0-mysql -y

   chmod 777 -R /var/www/html # cria o atalho da www
   echo " "
   echo " "
   echo -e "\033[01;32mDigite o diretório para criar o atalho \033[01;37m"
   read diretorio
   echo " "
   echo " "
   ln -s /var/www/html $diretorio"/www"

   sudo systemctl restart apache2

   echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
   read -p ""
   echo " "
elif [ "$programas" = "6" ];
then
    dir_atual=$(pwd)
    dpkg -i $dir_atual/pacotes/gitkraken.deb
    echo -e "\033[01;37mPressione \033[01;32m[Enter]\033[01;37m para continuar"
    read -p ""
    echo " "
fi

done

echo -e "\033[01;37mAté a próxima!"
exit
