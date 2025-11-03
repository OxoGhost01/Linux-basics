# exercice 4 mv, cp

if [ -d "$exercice4" ]
then
	rm -rf "$exercice4"
fi

mkdir -p "$exercice4/entrainement/dossier1"
mkdir -p "$exercice4/entrainement/dossier2"
mkdir -p "$exercice4/entrainement/dossier3"
echo -e "Je veux aller dans dossier1" > "$exercice4/entrainement/fichier1.txt"
echo -e "Je veux qu'on me renomme" > "$exercice4/entrainement/fihcier2.txt"
echo -e "Je veux qu'on me copie" > "$exercice4/entrainement/fichier3.txt"


mkdir -p "$exercice4/cible/d1/d3"
mkdir -p "$exercice4/cible/d2"
mkdir -p "$exercice4/cible/d4"
mkdir -p "$exercice4/cible/d5/d6"

echo -e "je veux aller dans \e[01;34md1\e[0m" > "$exercice4/cible/f1a.txt"
echo -e "je veux aussi aller dans \e[01;34md1\e[0m" > "$exercice4/cible/f1b.txt"
echo -e "je veux être renommé en super_f2.txt, sans être déplacé" > "$exercice4/cible/f2.txt"
echo -e "je veux qu'on crée une copie de moi qui s'appellera clone_f3.txt, dans le même dossier" > "$exercice4/cible/f3.txt"
echo -e "je veux qu'on fasse une copie de moi, en gardant le nom, et qu'on la mette dans \e[01;34md4\e[0m" > "$exercice4/cible/f4.txt"
echo -e "Moi je suis bien ici. Je ne veux pas changer." > "$exercice4/cible/d1/d3/f5.txt"
echo -e "Moi je suis bien ici. Je ne veux pas changer." > "$exercice4/cible/d5/d6/f6.txt"
echo -e "Moi non plus, je ne veux pas changer." > "$exercice4/cible/d5/d6/f6.txt"

if [ $final4 = true ]
then
	mv "$exercice4/cible/f1a.txt" "$exercice4/cible/f1b.txt" "$exercice4/cible/d1/"
	mv "$exercice4/cible/f2.txt" "$exercice4/cible/super_f2.txt"
	cp "$exercice4/cible/f3.txt" "$exercice4/cible/clone_f3.txt"
	cp "$exercice4/cible/f4.txt" "$exercice4/cible/d4/"
	mv "$exercice4/cible/d1/d3" "$exercice4/cible/d2/"
	cp -r "$exercice4/cible/d5/d6" "$exercice4/cible/"
fi


echo -e "Cette fois, on va apprendre à déplacer, renommer
et copier des fichiers ou des dossiers.

Pour cela, vous devez vous rendre dans
le dossier \e[01;34mentrainement\e[0m." > "$exercice4/instructions.txt"


echo -e "Pour déplacer un fichier il faut faire :
\e[01;92mmv FICHIER DESTINATION\e[0m
Par exemple, pour déplacer fichier1.txt dans dossier1 il faut faire :
\e[01;92mmv fichier1.txt dossier1/\e[0m

On peut aussi déplacer des dossiers. Par exemple :
\e[01;92mmv dossier2 dossier1/\e[0m
permet de mettre \e[01;34mdossier2\e[0m dans \e[01;34mdossier1\e[0m
Pour le remettre à sa place il faut faire :
\e[01;92mmv dossier1/dossier2 ./\e[0m

On peut déplacer plusieurs fichiers/dossiers en une commande :
\e[01;92mmv FICHIER1 FICHIER2 FICHIER3 ... DESTINATION\e[0m" > "$exercice4/entrainement/deplacer_fichier_ou_dossier.txt"



echo -e "Pour renommer un fichier, ou un dossier, il faut faire :
\e[01;92mmv FICHIER NOUVEAU_NOM\e[0m
Par exemple, pour renommer fihcier2.txt en fichier2.txt, on fait :
\e[01;92mmv fihcier2.txt fichier2.txt\e[0m

On peut aussi déplacer et renommer en même temps :
\e[01;92mmv FICHIER DESTINATION/NOUVEAU_NOM\e[0m" > "$exercice4/entrainement/renommer_fichier_ou_dossier.txt"

echo -e "Pour copier un fichier en changeant le nom, il faut faire :
\e[01;92mcp FICHIER NOM_COPIE\e[0m
Par exemple :
\e[01;92mcp fichier3.txt fichier4.txt\e[0m

Si on le copie dans un autre dossier, en gardant le nom, on peut faire :
\e[01;92mcp FICHIER DESTINATION\e[0m
Par exemple :
\e[01;92mcp fichier3.txt dossier1/\e[0m

Dans ce cas, on peut aussi copier plusieurs fichiers d'un coup :
\e[01;92mcp FICHIER1 FICHIER2 FICHIER3 ... DESTINATION\e[0m" > "$exercice4/entrainement/copier_fichier.txt"

echo -e "Pour copier un dossier, en lui donnant un nouveau nom, il faut faire :
\e[01;92mcp -r DOSSIER NOM_COPIE\e[0m
Par exemple :
\e[01;92mcp -r dossier1 copie_dossier1\e[0m

La copie d'un dossier copie également tout son contenu.

Si on le copie dans un autre dossier, en gardant le nom, on peut faire :
\e[01;92mcp -r DOSSIER DESTINATION\e[0m
Par exemple :
\e[01;92mcp -r copie_dossier1 dossier1/\e[0m

Dans ce cas, on peut aussi copier plusieurs dossier d'un coup :
\e[01;92mcp DOSSIER1 DOSSIER2 DOSSIER3 ... DESTINATION\e[0m" > "$exercice4/entrainement/copier_dossier.txt"



echo -e "Ces fichiers dans \e[01;34mcible\e[0m ne sont pas très contents.
Ils veulent tous être déplacés ou copiés.
Ils faut les interroger pour savoir ce qu'ils veulent.
Les dossiers aussi ont des envies.
Le dossier \e[01;34md3\e[0m veut aller dans \e[01;34md2\e[0m.
Le dossier \e[01;34md6\e[0m veut être copié dans \e[01;34mcible\e[0m, sans être renommé.

Il faut respecter tous leurs souhaits, sans rien changer
Une fois que vous avez fini, vous pouvez faire :
\e[01;92msh validation.sh\e[0m

Pour savoir comment faire, vous devriez
aller faire un petit \e[01;34mentrainement\e[0m..." > "$exercice4/copier_deplacer.txt"

#cp verification4.sh "$exercice4/validation.sh"
