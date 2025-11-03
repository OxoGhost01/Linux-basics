echo
echo -e "Bienvenue \e[01;96m${USER^}\e[0m"
echo -e "Tu devrais faire \e[01;92mcd exercice1\e[0m"
echo -e "Et ensuite, \e[01;92mcat consignes.txt\e[0m"
echo

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
