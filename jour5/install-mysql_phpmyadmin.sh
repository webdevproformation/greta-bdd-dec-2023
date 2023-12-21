#!/usr/bin/env bash
# https://www.yourtechy.com/technology/mysql-server-vagrant-virtualbox/
## variable d'environnement
## vagrant
## vagrant up --provision
DBHOST=localhost
DBNAME=dbname
DBUSER=dbuser
DBPASSWD=balbla

## installation de logiciel 
apt-get update
apt-get install vim curl build-essential python-software-properties git


## préparation de commande qui vont permettre d'installer MySQL et PHPmyadmin!
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password $DBPASSWD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/admin-pass password $DBPASSWD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password $DBPASSWD"
debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none"

# install mysql and admin interface
## installation de logiciel   mysql-server phpmyadmin
apt-get -y install mysql-server phpmyadmin

# créer une base de donnée qui s'appelle dbname
# associer un compteur utilisateur
mysql -uroot -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD'"

cd /vagrant

# update mysql conf file to allow remote access to the db
# modifier la conf de mysql pour pouvoir y accéder hors de la machine virtuelle
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
# start le serveur mysql 
sudo service mysql restart

# setup phpmyadmin
## installer phpmyadmin 
apt-get -y install php apache2 libapache2-mod-php php-curl php-gd php-mysql php-gettext a2enmod rewrite

sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

rm -rf /var/www/html
ln -fs /vagrant/public /var/www/html

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/apache2/php.ini

service apache2 restart