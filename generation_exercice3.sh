# exercice 3 touch, rm

if [ -d "$exercice3" ]
then
	rm -rf "$exercice3"
fi

mkdir -p "$exercice3/entrainement/dossier_test/"

touch "$exercice3/entrainement/dossier_test/fichier_a_effacer"
touch "$exercice3/entrainement/dossier_test/autre fichier_a_effacer"
touch "$exercice3/entrainement/a_effacer"
touch "$exercice3/entrainement/efface_moi_si_tu_oses"

mkdir -p "$exercice3/cible/dossier/"

touch "$exercice3/cible/dossier/truc_pas_important.txt"
touch "$exercice3/cible/dossier/codes_wifi.txt"
touch "$exercice3/cible/fleches.txt"

if [ $final3 = true ]
then
mkdir -p "$exercice3/cible/dossier/autre_dossier"	
touch "$exercice3/cible/dossier/autre_dossier/fich3.txt"	
touch "$exercice3/cible/dossier/fich2.txt"
touch "$exercice3/cible/fich1.txt"
touch "$exercice3/cible/nouveau_fichier.txt"
else
touch "$exercice3/cible/dossier/sujet_bac.txt"
touch "$exercice3/cible/dossier/solutions_des_exercices.txt"
touch "$exercice3/cible/factures.txt"
touch "$exercice3/cible/top_secret.txt"
fi

echo -e "Il n'y a pas que les dossiers que l'on peut
créer ou effacer. Il est aussi possible de le faire
avec des fichiers.
Pour cela, vous devez vous rendre dans
le dossier \e[01;34mentrainement\e[0m." > "$exercice3/instructions.txt"


echo -e "Pour supprimer un fichier il faut faire :
\e[01;92mrm FICHIER\e[0m
Attention, c'est irréversible. Pas de corbeille...

Il est même possible d'effacer plusieurs fichiers en une commande :
\e[01;92mrm FICHIER1 FICHIER2 FICHIER3 ...\e[0m" > "$exercice3/entrainement/supprimer_fichier.txt"

echo -e "Il y a de multiples façons de créer un fichier.
Le plus simple est d'utiliser la commande suivante :
\e[01;92mtouch FICHIER\e[0m
Cela crée un fichier vide mais qui peut être ouvert
avec un éditeur de texte, par exemple.
Si le fichier existe déjà, cela ne le change pas.
Cela change juste la date d'écriture, comme si vous veniez
de le sauvegarder à nouveau.

Il est possible de créer plusieurs fichiers en une commande :
\e[01;92mtouch FICH1 FICH2 FICH3 ...\e[0m" > "$exercice3/entrainement/creer_fichier.txt"

echo -e "Le dossier cible ne contient pas les bons fichiers.
Vous allez devoir effacer les fichiers incorrects et
créer ceux qui manquent. Au final, vous devez obtenir cela :
\e[01;34mcible\e[0m
├── \e[01;34mdossier\e[0m
│   ├── \e[01;34mautre_dossier\e[0m
│   │   └── fich3.txt
│   ├── codes_wifi.txt
│   ├── fich2.txt
│   └── truc_pas_important.txt
├── fich1.txt
├── fleches.txt
└── nouveau_fichier.txt
Il faut retrouver exactement la même structure.
Une fois que vous avez fini, vous pouvez faire :
\e[01;92msh validation.sh\e[0m

Pour savoir comment faire, vous devriez
aller faire un petit \e[01;34mentrainement\e[0m..." > "$exercice3/structure_incorrecte.txt"


