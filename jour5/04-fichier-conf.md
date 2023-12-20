Pour créer une machine virtuelle dans Virtual Box 

Vous allez saisir la commande suivante 

vagrant up 

=> cette commande va chercher un fichier Vagrantfile 

=> ruby 
=> Directive  => config.vm.box => installer OS UBUNTU 
=> Directive  => db.vm.network  => directive qui permettent d'accéder depuis le host au logiciel stocké dans la machine virtuelle  => IP  192.168.1.237
=> Directive =>  db.vm.provision => installation de logiciel est mis dans un autre fichier => install-mysql_phpmyadmin.sh   (.sh équivalent des fichiers .exe pour windows)

Vagrant.configure(2) do |config|

    config.vm.box = "ubuntu/xenial64"

    config.vm.define "db-server" do |db|
        db.vm.network "public_network", :bridge => "eth0", ip: "192.168.1.237"
        db.vm.network "forwarded_port", guest: 3306, host: 3306
        db.vm.network "forwarded_port", guest: 80, host: 8306
        db.vm.provision "shell", path: "install-mysql_phpmyadmin.sh"
    end
end   


pour pouvoir exécuter correction la commande 
vagrant up IL FAUT OBLIGATOIREMENT avoir une fichier 
Vagrantfile 