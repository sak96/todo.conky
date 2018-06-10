
install: ./todo/todo.sh ./todo/To-do.txt ./todo/conkyrc-todo
	cp -r  ./todo  ~/.conky/
	echo "alias todo=\"$(HOME)/.conky/todo/todo.sh\"" >> ~/.bashrc

clean: ~/.conky/todo/ ~/.bashrc 
	rm -r   ~/.conky/todo/
	sed "s:alias todo=\"$(HOME)/.conky/todo/todo.sh\"::g" -i ~/.bashrc

all: install  
	echo "completed"
