#!/bin/sh

# ./faire_obfusc nom_script_debut nom_script_a_cacher nom_final
nom_script_debut="$1"
nom_script_a_cacher="$2"
nom_final="$3"
cat "$nom_script_debut" > "$nom_final"
payload=$(cat "$nom_script_a_cacher" | base64 -w 0)
charge=$(echo "echo \"$payload\" | base64 -d | sh")
#echo "*********************"
#echo $payload
#echo "**********************"
#echo $charge
#sed -i 's,CHARGE,echo \"'"$payload"'\" | base64 -d | sh,' "$nom_final"

echo "$charge" > payload.tmp
printf '%s\n' '/CHARGE/r payload.tmp' 1 '/CHARGE/d' w | ed "$nom_final" &> /dev/null

