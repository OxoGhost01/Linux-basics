

obfusquer() {
nom_script_debut="$1"
nom_script_a_cacher="$2"
nom_final="$3"
cat "$nom_script_debut" > "$nom_final"
payload=$(cat "$nom_script_a_cacher" | base64 -w 0)
sed -i 's,CHARGE,echo \"'"$payload"'\" | base64 -d | sh -s \$*,' "$nom_final"
}

verif_base() {
echo "#!/bin/sh

if [ \"\$*\" = \"\$(echo $1)\" ]
then
	echo \"Bravo !\"
else
	echo \"Non, ce n'est pas ça.\"
fi"
}

echo "#!/bin/sh

CHARGE" > "$exercice5/base.sh"

verif_base "fichiers/a*" > "$exercice5/verif1.sh"
verif_base "fichiers/????.txt" > "$exercice5/verif2.sh"
verif_base "fichiers/?b*" > "$exercice5/verif3.sh"
verif_base "fichiers/*f.txt" > "$exercice5/verif4.sh"

echo "#!/bin/sh

if [ \"\$*\" = \"\$(echo fichiers/a*b?c*.t?t)\" ]
then
	echo \"Bravo !\"
	echo \"$generation_suivant\" | base64 -d | sh
	echo \"Vous pouvez passer à l'exercice 6.\"    
else
	echo \"Non, ce n'est pas ça.\"
fi" > "$exercice5/verif5.sh"


for i in {1..5}
do
obfusquer "$exercice5/base.sh" "$exercice5/verif$i.sh" "$exercice5/validation$i.sh"
chmod +x "$exercice5/validation$i.sh"
done

rm "$exercice5"/verif?.sh "$exercice5/base.sh"
