#!/bin/sh
if [ "$0" = "`basename $0`" ]
then
	echo "Bravo, vous avez réussi !"
	echo "Pour retourner au dossier principal,"
	echo -e "vous pouvez faire \e[01;32mcd\e[0m sans rien derrière."
	echo "Vous devriez avoir accès à l'exercice 2."
	CHARGE
else
	echo "Il faut se placer dans le dossier"
fi

