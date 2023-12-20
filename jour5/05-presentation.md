# Infrastructure 

- dans VirtualBox
- machine Ubuntu (OS)

## détail des logiciels installés (fichiers .sh)

- installé des logiciels 

```bash
apt-get install vim curl build-essential python-software-properties git
apt-get -y install mysql-server phpmyadmin
apt-get -y install php apache2 libapache2-mod-php php-curl php-gd php-mysql php-gettext a2enmod rewrite
```

- configuration : dire comment le logiciel doit fonctionner

```bash
debconf-set-selections
sudo sed 
```

- lancer les logiciels service
 
```bash
service apache restart
service mysql restart
```


