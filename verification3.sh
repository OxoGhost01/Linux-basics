#!/bin/sh

hashage=$(tree cible/ | md5sum)
if [ "$hashage" = "32c75b0d5eb1a1c9c6a8f8060e0f11c8  -" ]
then
	echo "Bravo, c'est tout bon !"
	CHARGE
    echo "Vous pouvez passer à l'exercice 4."
else
	echo "Non, ce n'est pas bon."
fi
