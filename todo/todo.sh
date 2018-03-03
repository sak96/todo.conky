#!/bin/bash

help(){
	echo -e "$0 [options] [argument]";
	echo -e "updates todo list for conky";
	echo -e "\t-a, add\t\tappends the argument to conky";
	echo -e "\t-r, remove\tremoves the argument(th) number or all in todo";
	echo -e "\t-h, help\tdisplay this help and exit";	
}

if [[ "$#" -ne "2" ]]; then
	help ;
	exit 1;
fi

op="$1";

refresh(){
	touch -m "$HOME/.conky/todo/conkyrc-todo";
}

add(){
	echo "added: $1"
	echo "$1" >> "$HOME/.conky/todo/To-do.txt"
	refresh;
}


remove(){
	id=$1;
	if [[ "$1" -eq "all" ]]; then
		id="1,$";
	fi
	echo "remove: $1"
	sed "${id}d" -i "$HOME/.conky/todo/To-do.txt"
	refresh;
}



case $op in	
	"add"|"-a") 
		shift;
		add "$@";
		;;
	"remove" | "-r") 
		shift;
		remove "$@";
		;;
	"help" | "-h")
		help "$@";
		;;
esac

