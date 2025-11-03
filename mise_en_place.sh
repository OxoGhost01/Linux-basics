#!/bin/sh

# On peut donner un paramètre qui est un autre compte pour lequel on va faire ces exos

source ./creation_variables_globales.sh $1

echo "#!/bin/sh

CHARGE" > base_payload.sh

donner_droits() {
    chmod +x "$2"
    if [ $autre_compte = true ]
    then
	    echo "chown -R $utilisateur \"\$exercice$1\"" >> "$2"
	    echo "chgrp -R $utilisateur \"\$exercice$1\"" >> "$2"
    fi
}


# exercice 6
echo "Génération de l'exercice 6"
echo "#!/bin/sh" > genere_exercice6.sh
./rajouter_variables_globales.sh genere_exercice6.sh
cat generation_exercice6.sh >> genere_exercice6.sh
donner_droits 6 genere_exercice6.sh


# exercice 5
echo "Génération de l'exercice 5"
echo "#!/bin/sh" > genere_exercice5.sh
./rajouter_variables_globales.sh genere_exercice5.sh
cat generation_exercice5.sh >> genere_exercice5.sh
payload=$(cat "genere_exercice6.sh" | base64 -w 0)
echo "generation_suivant=$payload" >> genere_exercice5.sh
cat generation_exercice5b.sh >> genere_exercice5.sh
donner_droits 5 genere_exercice5.sh

# exercice 4
echo "Génération de l'exercice 4"
echo "#!/bin/sh" > genere_exercice4.sh
./rajouter_variables_globales.sh genere_exercice4.sh
cat generation_exercice4.sh >> genere_exercice4.sh
./faire_obfusc.sh verification4.sh genere_exercice5.sh verif4.sh
./faire_obfusc.sh base_payload.sh verif4.sh verific4.sh
payload=$(cat "verific4.sh" | base64 -w 0)
echo "verif=$payload
echo \"\$verif\" | base64 -d > \"$exercice4/validation.sh\"
" >> genere_exercice4.sh
rm verif4.sh verific4.sh
donner_droits 4 genere_exercice4.sh

# exercice 3
echo "Génération de l'exercice 3"
echo "#!/bin/sh" > genere_exercice3.sh
./rajouter_variables_globales.sh genere_exercice3.sh
cat generation_exercice3.sh >> genere_exercice3.sh
./faire_obfusc.sh verification3.sh genere_exercice4.sh verif3.sh
./faire_obfusc.sh base_payload.sh verif3.sh verific3.sh
payload=$(cat "verific3.sh" | base64 -w 0)
#echo $payload
echo "verif=$payload
echo \"\$verif\" | base64 -d > \"$exercice3/validation.sh\"
" >> genere_exercice3.sh
rm verif3.sh verific3.sh
donner_droits 3 genere_exercice3.sh



# exercice 2
echo "Génération de l'exercice 2"
echo "#!/bin/sh" > genere_exercice2.sh
./rajouter_variables_globales.sh genere_exercice2.sh
cat generation_exercice2.sh >> genere_exercice2.sh

./faire_obfusc.sh pour_la_fin_de_l_ex2.sh genere_exercice3.sh obfusc.tmp
./faire_obfusc.sh base_payload.sh obfusc.tmp verific2.sh
payload=$(cat "verific2.sh" | base64 -w 0)
#echo $payload
echo "verif=$payload
echo \"\$verif\" | base64 -d > \"$exercice2/validation.sh\"
" >> genere_exercice2.sh
rm obfusc.tmp verific2.sh
donner_droits 2 genere_exercice2.sh



# exercice 1
echo "Génération de l'exercice 1"
echo "#!/bin/sh" > genere_exercice1.sh
./rajouter_variables_globales.sh genere_exercice1.sh
cat generation_exercice1.sh >> genere_exercice1.sh

./faire_obfusc.sh script_fin_ex1.sh genere_exercice2.sh obfusc.tmp
./faire_obfusc.sh base_payload.sh obfusc.tmp verific1.sh
# On devrait pouvoir se passer de payload ici, 
# mais il faut mettre en place la génération du script de verif
# et gérer les droits
payload=$(cat "verific1.sh" | base64 -w 0)
echo "verif=$payload
echo \"\$verif\" | base64 -d > \"$exercice1/dossier1/dossier3/.dossier_secret/dossier8/vers_exercice2.sh\"
" >> genere_exercice1.sh
rm obfusc.tmp verific1.sh
donner_droits 1 genere_exercice1.sh



rm base_payload.sh
# Exercice 1 : ls, cd et cat -> ls -a
#./generation_exercice1.sh

# exercice 2 -> mkdir, rmdir
#./generation_exercice2.sh

# exercice 3 touch, rm
#./generation_exercice3.sh

# exercice 4 mv, cp
#./generation_exercice4.sh

# exercice 5 glob ?
#./generation_exercice5.sh

# exercice 6 chmod
#./generation_exercice6.sh



# exercice pwd ?


# exercice ? grep base


# exercice ? grep avance

# exercice ? redirection et pipe


# exercice ? sed base


# exercice ? sed plus complexe
