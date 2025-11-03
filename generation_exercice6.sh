# exercice 6 chmod, chown, chgroup

if [ -d "$exercice6" ]
then
	rm -rf "$exercice6"
fi

mkdir -p "$exercice6/dossier1/dossier2"
mkdir -p "$exercice6/dossier3/dossier4"
echo -e "Je veux que seul(e) \e[01;96m$USER\e[0m puisse me lire et me modifier et rien pour les autres." > "$exercice6/aa.txt"
echo -e "Je veux que tout le monde puisse me lire mais que seul(e) \e[01;96m$USER\e[0m puisse me modifier." > "$exercice6/ab.txt"
echo -e "Je veux que tout le monde puisse me lire et personne ne puisse me modifier." > "$exercice6/bc.txt"
echo -e "Je veux que \e[01;96m$USER\e[0m puisse me lire et me modifier, que le groupe puisse me modifier et rien pour les autres." > "$exercice6/bd.txt"
echo -e "Je veux que mes droits ne changent pas." > "$exercice6/dossier1/fichier1.txt"
echo -e "Je veux les mêmes droits que \e[01;34mdossier3\e[0m, à part le côté exécutable." > "$exercice6/dossier3/dd.txt"
echo "#!/bin/sh

echo \"Bonjour les gens.\"
echo \"Je suis un script exécutable.\"" > "$exercice6/script.sh"

echo -e "Il faut maintenant apprendre à modifier les droits
de lecture et de modification.
En dehors des fichiers de consignes, il faut modifier (ou pas) les
droits pour qu'ils correspondent à ce que demandent les fichiers.

Plus concrétement, il faut changer les droits des fichiers \e[93m??.txt\e[0m
ainsi que ceux des dossiers et ce qu'ils contiennent.

Le dossier \e[01;34mdossier1\e[0m ne doit être accessible 
en lecture et écriture qu'à \e[01;96m$USER\e[0m et à personne d'autre.
Par contre ce qu'il contient ne doit pas changer.

Le dossier \e[01;34mdossier3\e[0m ne doit être accessible 
en lecture et en écriture qu'à \e[01;96m$USER\e[0m et à son groupe et à personne d'autre.
Et cela s'applique aussi à ce qu'il contient.

Il ne faut pas modifier le côté exécutable des dossiers.

Les fichiers \e[93m*.sh\e[0m doivent être exécutables par tout le monde et ce sont les seuls.

À la fin, il faut faire :
\e[01;92m./validation.sh\e[0m" > "$exercice6/consignes.txt"

echo -e "Linux est un système multi-utilisateurs.
Il doit donc gérer les droits qui permet de
déterminer qui a le droit de faire quoi sur un fichier.

Chaque utilisateur a une identité et appartient à des groupes.
Par exemple, au lycée, même si on est sous Windows,
vous avez votre identité (login) et vous faites partie
du groupe des élèves. Vous appartenez également
aux groupes correspondant à vos groupes de langues,
de spécialités, et ainsi de suite.

Chaque fichier est associé à un utilisateur, son
propriétaire et à un groupe.

Le système permet de donner des droits différents
au propriétaire, au groupe et aux autres utilisateurs." > "$exercice6/gestion_droits1.txt"

echo -e "Pour connaître les droits des fichiers et dossiers
on peut utiliser la commande :
\e[01;92mls -l\e[0m
Cela affiche les fichiers sous forme de liste en donnant les détails.
Sous certaines distributions, on peut aussi faire :
\e[01;92mll\e[0m
On peut également rajouter un motif glob
ou un nom de fichiers :
\e[01;92mll a*.txt\e[0m
On voit alors quelque chose comme :
-rw-r--r-- 1 $USER $USER 78 Apr 12 17:47 aa.txt
-rw-r--r-- 1 $USER $USER 81 Apr 12 17:47 ab.txt" > "$exercice6/gestion_droits2.txt"

echo -e "Les droits d'un fichier sont représentés par 10 symboles comme :
\e[01;96m-rw-r--r--\e[0m
Le premier vaut \e[01;96md\e[0m si c'est un dossier et \e[01;96m-\e[0m sinon.
Ensuite le groupe des 3 suivants correspond aux droits du propriétaire :
\e[01;96mrwx\e[0m
\e[01;96mr\e[0m veut dire que le fichier est lisible par le propriétaire
\e[01;96mw\e[0m veut dire que le fichier est modifiable par le propriétaire
\e[01;96mx\e[0m veut dire que le fichier est exécutable par le propriétaire
L'absence d'un symbole signifie que l'action est interdite.
Il y a ensuite un groupe de 3 symboles pour les membres
du groupe.
Enfin, il y a 3 symboles pour tous les autres utilisateurs.

Dans ce cas, le propriétaire est \e[01;96m$USER\e[0m. Le groupe s'appelle aussi \e[01;96m$USER\e[0m.
\e[01;96mAlice\e[0m peut lire et modifier le fichier. Les autres ne peuvent que le lire." > "$exercice6/gestion_droits3.txt"

echo -e "Pour modifier les droits des fichiers il faut utiliser :
\e[01;92mchmod MODIF FICHIER\e[0m
Pour la modification, il faut indiquer pour qui :
\e[01;96mu\e[0m : pour le propriétaire (user)
\e[01;96mg\e[0m : pour le groupe
\e[01;96mo\e[0m : pour les autres (others)
Ensuite on met \e[01;96m+\e[0m ou \e[01;96m-\e[0m pour ajouter ou enlever,
puis \e[01;96mr\e[0m, \e[01;96mw\e[0m et \e[01;96mx\e[0m.
Ainsi \e[01;96mu+w\e[0m rajoute la modification pour le propriétaire
et \e[01;96mo-r\e[0m enlève la lecture aux autres.
On peut aussi faire \e[01;96mu+r+w\e[0m ou \e[01;96mu+rw\e[0m.
On peut séparer les actions par une virgule :
\e[01;92mchmod u+w,g+r,o-r fichier.txt\e[0m" > "$exercice6/gestion_droits4.txt"

echo -e "On peut aussi indiquer les droits à l'aide
d'un code de 3 chiffres.
Il faut transformer les codes de 3 symboles
en binaire puis en base 10.
\e[01;96mrwx\e[0m -> 111 -> \e[01;96m7\e[0m
\e[01;96mr-x\e[0m -> 101 -> \e[01;96m5\e[0m
On fait cela pour chaque triplet :
\e[01;96mrw- r-- r--\e[0m -> 110 100 100 -> \e[01;96m644\e[0m
On peut alors faire :
\e[01;92mchmod 644 fichier.txt\e[0m" > "$exercice6/gestion_droits5.txt"

echo -e "Pour un dossier, si on change juste
les droits, cela ne change pas ceux de ce qu'il contient.
Pour le faire, il faut rajouter l'option -R :
\e[01;92mchmod -R ACTION DOSSIER\e[0m" > "$exercice6/gestion_droits6.txt"

echo "#!/bin/sh
ok=true

verif_code() {
if [ \$(stat -c \"%a\" \"\$1\") != \"\$2\" ]
then
	ok=false
    echo \"Problème avec les droits de \`basename \"\$1\"\`\"
fi
}

verif_code \"$exercice6/aa.txt\" "600"
verif_code \"$exercice6/ab.txt\" "644"
verif_code \"$exercice6/bc.txt\" "444"
verif_code \"$exercice6/bd.txt\" "620"
verif_code \"$exercice6/dossier1\" "711"
mkdir dossiertest
verif_code \"$exercice6/dossier1/dossier2\" \`stat -c \"%a\" dossiertest\`
rmdir dossiertest
touch fichiertest
verif_code \"$exercice6/dossier1/fichier1.txt\" \`stat -c \"%a\" fichiertest\`
rm fichiertest
verif_code \"$exercice6/dossier3\" "771"
verif_code \"$exercice6/dossier3/dossier4\" "771"
verif_code \"$exercice6/dossier3/dd.txt\" "660"

if [ \$ok = true ]
then
	echo \"Bravo tu as finis.\"
	echo \"(pour l'instant...)\"
else
	echo \"Non, cela ne va pas.\"
fi" > "$exercice6/valid.sh"

obfusquer() {
nom_script_debut="$1"
nom_script_a_cacher="$2"
nom_final="$3"
cat "$nom_script_debut" > "$nom_final"
payload=$(cat "$nom_script_a_cacher" | base64 -w 0)
sed -i 's,CHARGE,echo \"'"$payload"'\" | base64 -d | sh,' "$nom_final"
}

echo "#!/bin/sh

CHARGE" > "$exercice6/base.sh"

obfusquer "$exercice6/base.sh" "$exercice6/valid.sh" "$exercice6/validation.sh"
rm "$exercice6/base.sh" "$exercice6/valid.sh"

