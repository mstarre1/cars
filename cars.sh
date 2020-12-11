#! /bin/bash
#cars.sh
#Max Starreveld

loop=true
while [ "$loop" = true ];
do
	echo "You can: 1 - Add a car, 2 - Display list of cars, or 3 - Quit and exit"
	read -r INPUT
	case $INPUT in
		1)
			carString=""
			echo "Enter year:"
			read -r year
			echo "Enter make:"
			read -r make
			echo "Enter model:"
			read -r model
			carString="$carString$year:$make:$model"
			echo "$carString" >> my_old_cars
			;;
		2)
			sort my_old_cars
			;;
		3)
			echo "Thank you!"
			loop=false
			;;
	esac
done
