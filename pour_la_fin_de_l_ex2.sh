#!/bin/sh
hash=$(tree cible | md5sum)
if [ "$hash" == "f974b5a8d115e3a43d89d27468daff04  -" ]
then
	echo "Bravo, vous avez réussi !"
	CHARGE
    echo "Vous pouvez passer à l'exercice 3."
else
	echo "Ce n'est pas le résultat attendu"
fi
