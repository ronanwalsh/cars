#! /bin/bash
#cars.sh
#Ronan Walsh
NUM=0
while [ "$NUM" -ne 3 ]
do
	echo "[1] Enter a car"
	echo "[2] Display the list of cars"
	echo "[3] Quit and exit the program" 
	echo "Type number for spesific option"
	read -r NUM
	 case "$NUM" in
		"1")
			echo "Enter the year of the car: "
			read -r YEAR
			echo "Enter the make of the car: "
			read -r MAKE
			echo "Enter the model of the car: "
			read -r MODEL
			NEW="${YEAR}:${MAKE}:${MODEL}"
			echo "$NEW" >> my_old_cars.txt;;
		"2")
			sort my_old_cars.txt;;
		"3")
			echo "Goodbye.";;
		*)
			echo "Error. Try again.";;
	 esac
done

		
