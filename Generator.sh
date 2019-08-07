#!/bin/bash
min=1
max=12
echo "generation de systeme solaire en cours veuillez patienter"
rm -r 'systeme_didim'
mkdir 'systeme_didim'
number=$[ ($RANDOM % ($[$max - $min] + 1)) +$min ]
nomplan=$[ ($RANDOM % 457) ]
masse=$[ ($RANDOM % 900) + 50 ]
declare -a tabatmo=( "C02" "O2" "N" "CO" "N2" "H2O" "" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "1" "2" "3" "4" "5" "6" "7" "8" "9" )
declare -a tableau=( "fer" "or" "cuivre" "tungsten" "argent" "aluminium" )
	touch systeme_didim/'Le_Didim'.txt
	massesol=$[ $RANDOM % 1000 ]
	coefmassesol=$[ $RANDOM % 3 + 29 ]
	diametresol=$[ $RANDOM % 30000 ]
	tempsol=$[ $RANDOM % 100 + 2 ]
	echo "la masse de cette étoile est : " $massesol " x 10^" $coefmassesol "kg">>systeme_didim/'Le_Didim'.txt
	echo "l'étoile a un diametre de " $diametresol " x 10^5 km">>systeme_didim/'Le_Didim'.txt
	echo "la temperature a la surface est de " $tempsol " x 10^3k">>systeme_didim/'Le_Didim'.txt
while [ $number -gt 0 ]; do
	distance=$[ ($RANDOM % 9900) + 100 ]
	nomplan=$[ ($RANDOM % 457) ]
	masse=$[ ($RANDOM % 900) + 50 ]
	touch systeme_didim/'planete_'$nomplan.txt
	test1=$[ $RANDOM % 2 ]
	test2=$[ $RANDOM % 2 ]
	test3=$[ $RANDOM % 2 ]
	
	if [ $test3 -eq 0 ]
	then 
		satellites=$[ $RANDOM % 10 ]
	else
		satellites=0
	fi
	if [ $test1 -eq 0 ] 
	then
		type="Tellurique"
		diametre=$[ ($RANDOM % 56) + 4 ]
	else
		type="Gazeuse"
		diametre=$[ ($RANDOM % 130) + 20 ]
	fi
	if [ $test2 -eq 0 ] && [ $test1 -eq 0 ]
	then
		habite=" - Planete habitee"
	else
		habite=" - Planete non habitee"
	fi
	if [ $type = "Gazeuse" ]
	then
		massgrand=27
	else
		massgrand=24
	fi
	tempcornoir=$[  ]
	atmospres=$[  ]
	case=$[ $RANDOM % 7]
	case2=$[ $RANDOM % 35]
	echo " - Le metal principal est : " ${tableau[$case]}>>systeme_didim/'planete_'$nomplan.txt
	echo " - La masse est de : " $masse "* 10^" $massgrand " kg">>systeme_didim/'planete_'$nomplan.txt
	echo " - Planete "$type>>systeme_didim/'planete_'$nomplan.txt
	echo "$habite">>systeme_didim/'planete_'$nomplan.txt
	echo " - Planete situee a : " $distance "Gigametres (10^9m) de son étoile : " $nometoile>>systeme_didim/'planete_'$nomplan.txt
	echo " - La planete a un diametre de : " $diametre "*10^3 km">>systeme_didim/'planete_'$nomplan.txt
	echo " - La planete a : " $satellites " satellites">>systeme_didim/'planete_'$nomplan.txt
	number=$[$number - 1]
done
echo "systeme genere"




