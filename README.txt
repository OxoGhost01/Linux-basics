# TP LINUX avec jslinux

Ce TP est initialement pensé pour être utilisé à l'aide de jslinux à l'adresse suivante :
https://bellard.org/jslinux/vm.html?cpu=riscv64&url=fedora33-riscv.cfg&mem=512

Il faut se connecter sur le site et charger le fichier "preparation.sh".
Ensuite, il faut faire "sh preparation.sh" en tant que root.
Cela va créer les fichiers nécessaires, créer le compte "alice", installer tree et makeself (au cas où) et va déployer le premier exercice dans le compte de alice.


# Les exercices

Ensuite, il "suffit" de suivre les indications et de se mettre au travail.

Il y a 6 exercices.


Pour valider un exercice, il faut lancer un script, qui va générer les fichiers de l'exercice suivant, si tout va bien.

Du coup, chaque exercice contient les générateurs des fichiers suivants, encodés avec base64. Sur un ordi normal, cela ne prend pas plus de 2 ou 3 secondes, mais sur jslinux, cela peut prendre plusieurs minutes. Il faut être patient.

# En cas de problème

S'il y a un problème sous jslinux, il est possible de redevenir root en faisant "CTRL+D". Pour redevenir alice, il faut faire "su - alice".

Si on veut générer l'exercice X, il faut lancer le script /root/prepa/genere_exerciceX.sh

