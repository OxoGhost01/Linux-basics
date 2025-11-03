# exercice 5 glob

if [ -d "$exercice5" ]
then
	rm -rf "$exercice5"
fi

mkdir -p "$exercice5/fichiers/"

echo "#!/usr/bin/python3
# -*- coding: UTF-8 -*-
# Filename: generation_noms.py
import random

random.seed(1)

alphabet = [chr(97+i) for i in range(6)]

def generation_nom(longueur):
    return ''.join(random.choices(alphabet, k=longueur))

def generation_noms(nombres, longueur, extension='txt'):
    return list({generation_nom(longueur)+'.'+extension for _ in range(nombres)})

def generer_tous_noms():
    liste_fichiers=[]
    for i in range(3, 10):
        liste_fichiers.extend(generation_noms(i*10, i, 'txt'))
    for i in range(5, 10):
        liste_fichiers.extend(generation_noms(5*i, i, 'tnt'))
    for i in range(5, 10):
        liste_fichiers.extend(generation_noms(5*i, i, 'ext'))
    for i in range(5, 10):
        liste_fichiers.extend(generation_noms(5*i, i, 'tiff'))
    for i in range(5, 10):
        liste_fichiers.extend(generation_noms(5*i, i, 'sh'))
    print(' '.join(liste_fichiers))

generer_tous_noms()
" > "$exercice5/generation_noms.py"

fichiers=`python3 "$exercice5/generation_noms.py"`
rm "$exercice5/generation_noms.py"

for f in $fichiers
do
	touch "$exercice5/fichiers/$f"
done

echo -e "Cet exercice est composé de plusieurs challenge.
Seul le dernier est obligatoire pour continuer,
mais les autres servent d'entraînement.

Vous trouverez chaque question dans les fichiers challengeX.txt.

Mais avant cela vous devriez regarder du côté de glob_base.txt." > "$exercice5/consignes.txt"

echo -e "Afin de simplifier la manipulation des fichiers
il est possible d'utiliser des filtres.
On appelle cela le Globbing. Les motifs Glob servent
à décrire le nom des fichiers manipulés.

Pour cela, on utilise 2 symboles spéciaux :
\e[93m*\e[0m sert à remplacer 0 ou plusieurs symboles ;
\e[93m?\e[0m sert à remplacer exactement un symbole.

Par exemple \e[93mc?a?\e[0m peut correspondre à :
\e[93mchat\e[0m ou \e[93mclap\e[0m, mais pas \e[93mchats\e[0m ou \e[93mcape\e[0m.

De même \e[93ma*n\e[0m peut correspondre à :
\e[93man\e[0m, \e[93mavion\e[0m ou \e[93malpin\e[0m.

Ainsi, \e[93m?a*\e[0m correspond à tous les noms
dont la 2e lettre est un \e[93ma\e[0m." > "$exercice5/glob_base.txt"

echo -e "Les symboles \e[93m?\e[0m et \e[93m*\e[0m peuvent remplacer
n'importe quel symbole, à l'exception de \e[93m/\e[0m.
Ainsi, \e[93md*.txt\e[0m ne peut pas correspondre à :
\e[93mdossier/mon_fichier.txt\e[0m
Par contre, il correspond à :
\e[93mdossier/*.txt\e[0m
ou encore:
\e[93m*/*.txt\e[0m

Pour tester un motifs avec ce qui est dans \e[01;34mfichiers\e[0m,
vous pouvez essayer :
\e[01;92mls fichiers/MOTIF\e[0m
Comme :
\e[01;92mls fichiers/*.txt\e[0m

Pour les fichiers ou dossiers cachés,
il faut mettre explicitement le \e[93m.\e[0m au début :
\e[93m.*\e[0m ou \e[93m.c*\e[0m pour \e[93m.cache.txt\e[0m" > "$exercice5/glob_avance.txt"

# a*
# ????.txt
# ?b*
# *f.txt
echo -e "Pour relever ce challenge, vous devez trouver
le motif glob qui correspond à tous les fichiers commençant
par \e[93ma\e[0m dans le dossier \e[01;34mfichiers\e[0m.

Pour valider votre réponse, il faut faire :
\e[01;92msh validation1.sh MOTIF\e[0m
Par exemple :
\e[01;92msh validation1.sh fichiers/*.txt\e[0m" > "$exercice5/challenge1.txt"

echo -e "Pour relever ce challenge, vous devez trouver
le motif glob qui correspond à tous les fichiers
dont le nom contient exactement 4 lettres suivies
de l'extension \e[93m.txt\e[0m dans le dossier \e[01;34mfichiers\e[0m.

Pour valider votre réponse, il faut faire :
\e[01;92msh validation2.sh MOTIF\e[0m" > "$exercice5/challenge2.txt"

echo -e "Pour relever ce challenge, vous devez trouver
le motif glob qui correspond à tous les fichiers
dont la 2e lettre est un \e[93mb\e[0m dans le dossier \e[01;34mfichiers\e[0m.

Pour valider votre réponse, il faut faire :
\e[01;92msh validation3.sh MOTIF\e[0m" > "$exercice5/challenge3.txt"

echo -e "Pour relever ce challenge, vous devez trouver
le motif glob qui correspond à tous les fichiers
dont la dernière lettre avant l'extension \e[93m.txt\e[0m
est un \e[93mf\e[0m dans le dossier \e[01;34mfichiers\e[0m.

Pour valider votre réponse, il faut faire :
\e[01;92msh validation4.sh MOTIF\e[0m" > "$exercice5/challenge4.txt"

echo -e "Pour relever ce dernier challenge, vous devez trouver
le motif glob qui correspond à tous les fichiers de \e[01;34mfichiers\e[0m tels que :
- la première lettre est un \e[93ma\e[0m ;
- il y a un \e[93mb\e[0m qui se trouve une lettre avant un \e[93mc\e[0m,
  comme dans \e[93mbac\e[0m ;
- l'extension est de 3 lettres dont la 1e et la dernière
  sont des \e[93mt\e[0m.

Pour valider votre réponse, il faut faire :
\e[01;92msh validation5.sh MOTIF\e[0m" > "$exercice5/challenge5.txt"


