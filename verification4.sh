#!/bin/sh

mv cible cible_eleve
exercice4="."

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

	mv "$exercice4/cible/f1a.txt" "$exercice4/cible/f1b.txt" "$exercice4/cible/d1/"
	mv "$exercice4/cible/f2.txt" "$exercice4/cible/super_f2.txt"
	cp "$exercice4/cible/f3.txt" "$exercice4/cible/clone_f3.txt"
	cp "$exercice4/cible/f4.txt" "$exercice4/cible/d4/"
	mv "$exercice4/cible/d1/d3" "$exercice4/cible/d2/"
	cp -r "$exercice4/cible/d5/d6" "$exercice4/cible/"


diff -qr cible cible_eleve &>/dev/null
if [ $? == 0 ]
then
	echo "Bravo, c'est parfait"
	#echo \"$generation_suivant\" | base64 -d | sh
	CHARGE
    echo "Vous pouvez passer à l'exercice 5."
else
	echo "il y a des choses qui ne vont pas"
fi

rm -rf cible
mv cible_eleve cible
