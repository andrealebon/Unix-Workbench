all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "The Unix Workbench Peer Graded Assessment" >> README.md
	echo "Welcome to the Guessing Game" >> README.md
	echo "\n The assignment aims at the creation of game that continues until the user correctly guesses the number of files present in the given directory." >> README.md
	echo $$(date) >> readme.md
	echo " \n" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

clean:
	rm readme.md
