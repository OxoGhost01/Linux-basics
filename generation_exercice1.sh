# Exercice 1 : ls, cd et cat -> ls -a

if [ -d "$exercice1" ]
then
	rm -rf "$exercice1"
fi

mkdir -p "$exercice1/dossier1/dossier3/.dossier_secret/dossier8"
mkdir -p "$exercice1/dossier1/dossier4/dossier9a/"
mkdir -p "$exercice1/dossier1/dossier4/dossier9b/"
mkdir -p "$exercice1/dossier2/dossier5/dossier10/"
mkdir -p "$exercice1/dossier2/dossier6/"
mkdir -p "$exercice1/dossier2/dossier7/"

echo -e "Pour passer à la suite,
il faut trouver le dossier \e[01;34mdossier8\e[0m
N'hésitez pas à vous promener dans les sous-dossiers.

Pour afficher le contenu d'un dossier il faut utiliser la commmande :
\e[01;92mls\e[0m

Pour afficher le contenu d'un fichier, il faut faire :
\e[01;92mcat FICHIER\e[0m
" > "$exercice1/consignes.txt"

echo -e "Il a l'air bien \e[1mcaché\e[0m ce dossier..." > "$exercice1/dossier1/dossier3/pas_par_la.txt"

echo -e "Pour se déplacer dans l'arborescence :
\e[01;92mcd DOSSIER\e[0m  -> Pour aller dans \e[01;34mDOSSIER\e[0m
\e[01;92mcd ..\e[0m       -> Pour revenir dans le dossier parent" > $exercice1/se_deplacer.txt

echo -e "Le dossier n'est pas là.
Par contre, pour gagner du temps, vous pouvez
utiliser la touche \e[100mTAB\e[0m pour compléter automatiquement
le nom du dossier.
S'il y a plusieurs complétions possibles, seules les lettres
communes seront ajoutées. Un deuxième appui sur \e[100mTAB\e[0m
affichera la liste des complétions possible." > "$exercice1/dossier1/dossier4/dossier9a/a_lire.txt"

echo -e "Le dossier n'est pas là non plus.
Mais pour accélérer la navigation, sachez que vous
pouvez vous déplacer de plusieurs dossiers en
une seule commande.
Par exemple vous pouvez faire :
\e[01;92mcd ../../../dossier2/\e[0m" > "$exercice1/dossier1/dossier4/dossier9b/a_lire.txt"

echo -e "Peut-être à côté..." > "$exercice1/dossier2/dossier5/dossier10/a_lire.txt"

echo -e "Personne ici.

Si vous êtes perdus, 
faites \e[01;92mpwd\e[0m pour voir où vous êtes.

Vous pouvez aussi faire \e[01;92mtree\e[0m pour avoir une
vue plus claire de l'arborescence à partir du dossier actuel." > "$exercice1/dossier2/dossier6/a_lire_si_tu_oses.txt"

echo -e "Peut-être que le dossier est caché...
Pour afficher les fichiers cachés, vous pouvez faire :
\e[01;92mls -a\e[0m
Sous Linux, pour cacher un fichier ou dossier,
il suffit de mettre un \".\" au début de son nom :

$ ls
fichier_pas_caché.txt

$ ls -a
\e[01;34m.\e[0m  \e[01;34m..\e[0m  .fichier_caché.txt  fichier_pas_caché.txt

On remarque aussi qu'il y a \"\e[01;34m.\e[0m\" qui correspond au dossier actuel
et \"\e[01;34m..\e[0m\" qui correspond au chemin vers le dossier parent." > "$exercice1/dossier2/dossier7/information_vitale.txt"

echo -e "Et bien le voici.
Je me demande ce qu'il y a dedans..." > "$exercice1/dossier1/dossier3/.dossier_secret/bravo.txt"

echo -e "Pour débloquer la suite,
il faut exécuter le fichier \e[01;32mvers_exercice2.sh\e[0m
Ce fichier est un script bash.
Pour l'exécuter, il faut faire :
\e[01;92msh vers_exercice2.sh\e[0m" > "$exercice1/dossier1/dossier3/.dossier_secret/dossier8/victoire.txt"

#./faire_obfusc.sh script_fin_ex1.sh generation_exercice2.sh "$exercice1/dossier1/dossier3/.dossier_secret/dossier8/vers_exercice2.sh"

