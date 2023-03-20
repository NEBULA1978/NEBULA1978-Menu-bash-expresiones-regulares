#!/bin/bash

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

export DEBIAN_FRONTEND=noninteractive

trap ctrl_c INT

function ctrl_c() {
	echo -e "\n${yellowColour}[*]${endColour}${grayColour}Saliendo${endColour}"
	tput cnorm
	exit 0
}

function helpPanel() {
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Uso: ./Menu12.sh${endColour}"
	echo -e "\n\t${purpleColour}a)${endColour}Introducir ./Menu12.sh -e para Jugar a la Ruleta\n"

	exit 0
}

function ruleta() {
	echo "Mostrando datos"
	echo -e ""
	echo -e ""
	echo -ne "\033[1;34m[+] ¿Cuánto dinero quieres introducir para apostar?\033[0m\033[1;31m€ -> " && read money
	echo -e "\033[1;34m[+] Dinero actual ${money}€\033[0m|"
	echo -ne "\033[1;34m[+] ¿Cuánto dinero quieres empezar a apostar?\033[0m\033[1;31m€ -> " && read initial_bet

	# Comprobamos si la cantidad de la apuesta es mayor que el dinero disponible
	if [ "$initial_bet" -gt "$money" ]; then
		echo -e "\n${redColour}[+] Lo siento, no tienes suficiente dinero para hacer esa apuesta.${endColour}\n"
		initial_bet=$money
	fi

	echo -ne "\033[1;34m[+] ¿Apostar a números pares o impares? (par/impar): \033[0m" && read par_impar
	echo -ne "\n\033[1;34m[+] Vamos a empezar con una cantidad incicial de $initial_bet€ a $par_impar\033[0m "
	echo -e "\n"

	# Creamos backup
	backup_bet=$initial_bet
	# Contador variable
	play_counter=1
	# Jugadas malas
	jugadas_malas="[ "

	# Iniciamos While
	tput civis #Ocultar
	while true; do
		if [ "$money" -eq 0 ]; then
			echo -e "\n${redColour}[+] Lo siento, te has quedado sin dinero. El juego ha terminado.${endColour}\n"
			break
		fi
		echo -e "\n${yellowColour}[+]${endColour}${yellowColour} Acabas de apostar${endColour} ${blueColour}$initial_bet€${endColour} ${yellowColour}y tienes${endColour} ${blueColour}$money€${endColour}"
		random_number="$(($RANDOM % 37))"
		echo -e "\n${yellowColour}[+] Ha salido el número${endColour} ${blueColour}$random_number${endColour}"

		# sleep 1

		if [ "$par_impar" == "par" ]; then
			if [ "$(($random_number % 2))" -eq 0 ]; then
				# Si el número que ha salido es igual a 0, has perdido
				if [ "$random_number" -eq 0 ]; then
					echo -e "\n${yellowColour}[+] Ha salido el 0, por tanto pierdes${endColour}\n"
					money=$(($money - $initial_bet))
					initial_bet=$(($initial_bet / 2))
					jugadas_malas="$random_number "
					# Ajuste de apuesta después de perder por cero
					if [ "$initial_bet" -lt "$backup_bet" ]; then
						initial_bet=$backup_bet
					fi
				else
					echo -e "\n${yellowColour}[+] El número que ha salido es Par, ${endColour} ${purpleColour} Ganas${endColour}\n"
					reward=$(($initial_bet * 2))
					echo -e "\n${yellowColour}[+] Ganas un total de${endColour} ${blueColour}$reward€${endColour}"
					money=$(($money + $reward))
					echo -e "\n${yellowColour}[+] Tienes${endColour} ${blueColour}$money€${endColour}\n"
					initial_bet=$backup_bet
					jugadas_malas=""
				fi
			else
				echo -e "\n${yellowColour}[+] El número que ha salido es Impar ${endColour} ${redColour}Pierdes ${endColour}\n"
				money=$(($money - $initial_bet))
				initial_bet=$(($initial_bet * 2))
				jugadas_malas="$random_number "

				echo -e "\n${yellowColour}[+] Ahora te quedan ${endColour} ${redColour}$money€ ${endColour}\n"
				# sleep 1

				# Si se queda sin dinero se acaba el juego
				if [ "$money" -eq 0 ]; then
					echo -e "\n${yellowColour}[+] Te has quedado sin dinero, fin del juego.${endColour}\n"
					echo -e "\n${redColour}[+] Ham habido un total de $play_counter${endColour} jugadas ganadas\n"
					echo -e "\n${redColour}[+] Las malas jugadas consecutvas que hemos perdido${endColour} $jugadas_malas jugadas\n"
					echo -e "\n${redColour}[+] Total de jugadas consecutvas que hemos jugado${endColour} $(($jugadas_malas + $play_counter)) \n"
					echo -e "\n${redColour}[+] La ronda $play_counter fue perdida, el número que salió fue $random_number\n"
					tput cnorm
					exit 0
				fi
			fi

			# Comprobamos si la cantidad de la apuesta es mayor que el dinero disponible después de cada jugada
			if [ "$initial_bet" -gt "$money" ]; then

				echo -e "\n${redColour}[+] Lo siento, no tienes suficiente dinero para hacer esa apuesta.${endColour}\n"
				initial_bet=$money
			fi
		fi
		# Incrementamos en 1
		let play_counter+=1
	done

	tput cnorm #Recuperamos el cursor
	ssssssss
	read foo
}

# Main Function

if [ "$(id -u)" == "0" ]; then
	declare -i parameter_counter=0
	while getopts ":eh:" arg; do
		case $arg in
		# a) mostrarDiscos; let parameter_counter+=1 ;;

		e)
			ruleta
			let parameter_counter+=1
			;;

		h) helpPanel ;;
		esac
	done

	if [ $parameter_counter -eq 0 ]; then
		helpPanel
	fi
	tput cnorm
else
	echo -e "\n${redColour}[*] No soy root${endColour}\n"
	# mostrarDiscos
	ruleta
fi
