#!/bin/sh

exporter_var() {
echo "$1=$2" >> "$3"
}


exporter_var emulateur "$emulateur" "$1"
exporter_var base "$base" "$1"

exporter_var exercice1 "$exercice1" "$1"
exporter_var exercice2 "$exercice2" "$1"
exporter_var exercice3 "$exercice3" "$1"
exporter_var exercice4 "$exercice4" "$1"
exporter_var exercice5 "$exercice5" "$1"
exporter_var exercice6 "$exercice6" "$1"

exporter_var final2 "$final2" "$1"
exporter_var final3 "$final3" "$1"
exporter_var final4 "$final4" "$1"

