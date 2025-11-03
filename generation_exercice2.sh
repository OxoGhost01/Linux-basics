# exercice 2 -> mkdir, rmdir

if [ -d "$exercice2" ]
then
	rm -rf "$exercice2"
fi

mkdir -p "$exercice2/entrainement/un_dossier_a_effacer/dossier_genant/"
mkdir -p "$exercice2/entrainement/un_dossier_a_effacer/autre_dossier_genant/"

mkdir -p "$exercice2/cible/a/aa/aaa/"
mkdir -p "$exercice2/cible/a/aa/aab/"
mkdir -p "$exercice2/cible/b/ba/bac"

if [ $final2 = true ]
then
mkdir -p "$exercice2/cible/b/bb/"
mkdir -p "$exercice2/cible/b/bc/bca"
else
mkdir -p "$exercice2/cible/a/ab/aba/"
mkdir -p "$exercice2/cible/a/ab/abb/"
mkdir -p "$exercice2/cible/b/ba/baa"
mkdir -p "$exercice2/cible/b/ba/bab"
fi

echo -e "Maintenant que vous savez vous déplacer
dans les dossiers, il faut apprendre à les créer
ou à les supprimer.
Pour cela, vous devez vous rendre dans
le dossier \e[01;34mentrainement\e[0m." > "$exercice2/instructions.txt"


echo -e "Pour effacer un dossier il faut faire :
\e[01;92mrmdir DOSSIER\e[0m
Attention, il faut que le dossier soit vide.
Il faut donc effacer les sous dossiers en premier.
Pour effacer \e[01;34mDOSSIER2\e[0m qui est dans \e[01;34mDOSSIER1\e[0m, vous pouvez faire :
\e[01;92mrmdir DOSSIER1/DOSSIER2\e[0m

Il est même possible d'effacer plusieurs dossiers en une commande :
\e[01;92mrmdir DOSS1 DOSS2 DOSS3 ...\e[0m" > "$exercice2/entrainement/effacer_dossier.txt"

echo -e "Pour créer un dossier il faut faire :
\e[01;92mmkdir DOSSIER\e[0m
Pour créer un sous-dossier d'un dossier existant
il faut faire :
\e[01;92mmkdir DOSSIER1/DOSSIER2\e[0m

Il est possible de créer plusieurs dossiers en une commande :
\e[01;92mmkdir DOSS1 DOSS2 DOSS3 ...\e[0m" > "$exercice2/entrainement/creer_dossier.txt"

echo -e "Le dossier cible n'est pas rempli comme il faut.
Vous allez devoir effacer les dossiers incorrects et
créer ceux qui manquent. Au final, vous devez obtenir cela :
\e[01;34mcible/\e[0m
├── \e[01;34ma\e[0m
│   └── \e[01;34maa\e[0m
│       ├── \e[01;34maaa\e[0m
│       └── \e[01;34maab\e[0m
└── \e[01;34mb\e[0m
    ├── \e[01;34mba\e[0m
    │   └── \e[01;34mbac\e[0m
    ├── \e[01;34mbb\e[0m
    └── \e[01;34mbc\e[0m
        └── \e[01;34mbca\e[0m
Il faut retrouver exactement la même structure.
Une fois que vous avez fini, vous pouvez faire :
\e[01;92msh validation.sh\e[0m

Pour rappel, vous pouvez faire \e[01;92mtree\e[0m pour avoir la structure du dossier courant.
Vous pouvez aussi faire \e[01;92mtree dossier\e[0m pour avoir la structure de \e[01;34mdossier\e[0m.

Pour savoir comment faire, vous devriez
aller faire un petit \e[01;34mentrainement\e[0m..." > "$exercice2/generation_incorrecte.txt"


