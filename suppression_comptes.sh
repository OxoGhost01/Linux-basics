#!/bin/sh

# Permet de supprimer les comptes se trouvant dans le fichier passé en paramètre.
# Attention, c'est dangereux.
# Doit être appelé avec sudo

if [ -f "$1" ]
then # on nous a donné un fichier contenant les comptes à créer
    while read line
    do
        echo "suppression de $line"
        userdel -r "$line"
    done < "$1"
else
    echo "Il faut donner en paramètre un fichier contenant une liste de logins."
fi
