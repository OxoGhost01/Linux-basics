#!/bin/sh




installation_compte () {
    #adduser -m $utilisateur
    if [ $# -ge 1 ]
    then
        source ./creation_variables_globales.sh "$1"
    else
        source ./creation_variables_globales.sh
    fi
    echo "*************************"
    if [ $autre_compte = true ]
    then
        echo "On s'occupe du compte de $utilisateur"
    else
        echo "On fait une version de test"
    fi
    echo "*************************"
    echo $utilisateur $base $emulateur $autre_compte
    echo "Génération des fichiers"
    ./mise_en_place.sh $1
    #chown alice genere_exercice1.sh
    #date
    #echo -e "Bienvenue \e[01;96mAlice\e[0m"
    #echo -e "Tu devrais faire \e[01;92mcd exercice1\e[0m"
    #echo -e "Et ensuite, \e[01;92mcat consignes.txt\e[0m"
    if [ $autre_compte = true ]
    then
        getent passwd $utilisateur > /dev/null
        if [ $? -ne 0 ]
        then
            if [ $emulateur = true ]
            then
                adduser -m $utilisateur
            else
                sudo adduser --disabled-password --gecos "" "$utilisateur"
                echo "$utilisateur:$utilisateur" | chpasswd
            fi    
        fi
        if [ ! -f "$base/.bash_profile" ]
        then
            cp bash_profile "$base/.bash_profile"
            chown $utilisateur "$base/.bash_profile"
            chgrp $utilisateur "$base/.bash_profile"
        fi
    fi

    echo "Création du dossier de l'exercice 1"
    ./genere_exercice1.sh

    if [ $emulateur = true ]
    then
        chown -R $utilisateur $exercice1
        echo -e "Bienvenue \e[01;96mAlice\e[0m"
        echo -e "Tu devrais faire \e[01;92mcd exercice1\e[0m"
        echo -e "Et ensuite, \e[01;92mcat consignes.txt\e[0m"
        su - $utilisateur
    fi
}

if [ `uname -p` = "riscv64" ]
then
	export emulateur=true
else
	export emulateur=false
fi

if [ $emulateur = true ]
then
    unzip commandes_supplementaires.zip
    cp -rf usr /
    #chown alice mise_en_place.sh
    #chgrp alice mise_en_place.sh
    chmod o+x /usr/bin/tree
    chmod o+x /usr/bin/makeself.sh
fi

#date

if [ $# -ge 1 ]
then
   if [ -f "$1" ]
   then # on nous a donné un fichier contenant les comptes à créer
        while read line
        do
            installation_compte "$line"
        done < "$1"
   else # on nous a donné un login
     installation_compte "$1"
   fi
else
    installation_compte
fi
