#!/bin/bash
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
	echo "remove: $1"
	sed "$1d" -i "$HOME/.conky/todo/To-do.txt"
	refresh;
}

help(){
	echo -e "$0 [options] [argument]";
	echo -e "updates todo list for conky";
	echo -e "\t-a, add\t\tappends the argument to conky";
	echo -e "\t-r, remove\tremoves the argument(th) number in todo";
	echo -e "\t-h, help\tdisplay this help and exit";	
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

