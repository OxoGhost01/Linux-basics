#!/bin/sh

# pour savoir où on est
if [ `uname -p` = "riscv64" ]
then
	export emulateur=true       # On est sur l'émulateur ou pas
    export utilisateur="alice"  # On va utiliser un nouveau compte : Alice
	export base="/home/alice"   # Le dossier $HOME du compte
    export autre_compte=true    # On ne produit pas pour le même compte
else
	export emulateur=false
    if [ $# -ge 1 ]  # On a donné un nom d'utilisateur
    then
        export utilisateur="$1"
        export base="/home/$utilisateur"
        export autre_compte=true    
    else             # On fait des essais, donc on va dans un sous-dossier
        export utilisateur="$USER"
        export base="`pwd`/../dossier_travail"
        export autre_compte=false
    fi
fi

# L'emplacement des exercices
export exercice1="$base/exercice1"
export exercice2="$base/exercice2"
export exercice3="$base/exercice3"
export exercice4="$base/exercice4"
export exercice5="$base/exercice5"
export exercice6="$base/exercice6"


# version finale (c'est-à-dire résultat attendu)
export final2=false
export final3=false
export final4=false



