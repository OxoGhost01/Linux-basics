#!/bin/sh

# on efface le dossier final s'il existe encore
if [ -d preparation ]
then
        rm -rf preparation
fi

# on fait le dossier qui servira à créer l'archive
mkdir preparation

# on copie tous les fichiers nécessaires
for fichier in `cat liste_fichiers_a_copier.txt`
do
        cp "$fichier" preparation/
done
makeself --target prepa preparation preparation.sh "Exercices bash" ./presentation.sh


