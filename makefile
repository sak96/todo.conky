
install: ./todo/todo.sh ./todo/To-do.txt ./todo/conkyrc-todo
	cp -r  ./todo  ~/.conky/
	echo "alias todo=\"$(HOME)/.conky/todo/todo.sh\"" >> ~/.bashrc

all: install  
	echo "completed"
