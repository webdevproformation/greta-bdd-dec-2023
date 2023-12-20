# vagrant

outil en ligne de commande qui permet de créer des machines virtuelles dans VirtualBox

## outil en ligne de commande 

- outil qui n'a pas de fenêtre / bouton / cliquer 
- outil que l'on peut utiliser UNIQUEMENT via un terminal  
- écrire ce que vous voulez faire (commande) dans un terminal

## listing des commandes à connaitre 

- vagrant --help (mode d'emploi succint de l'outil)
- Usage: vagrant [options] <command> [<args>] 
- => vagrant 
    - option facultative 
    - command obligatoire
    - argument facultatif
    - 
- vagrant init => créer un fichier Vagrantfile = fichier de description de la machine virtuelle à créer 
- vagrant up => si la machine n'est créé => la commande créer la machine + démarrer 
- vagrant status => est ce que la machine est démarrée ou éteinte 
- vagrant halt => arrêter la machine 
- vagrant destroy => arrête la machine et même la supprimer
- 
- vagrant up --provision => démarrer / relancer son installation 
- vagrant ssh => se connecter à la machine virtuelle pour voir ce qu'il s'y passe 