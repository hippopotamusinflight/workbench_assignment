all: README.md title datetime lines

README.md:
	touch README.md

title:
	echo "#Guessing Game" > README.md
	echo "##Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md

datetime:
	echo "make was ran on: $$(date)" >> README.md

lines: guessinggame.sh
	echo "there are $$(wc -l guessinggame.sh | egrep -o "[0-9]+") \
	lines of code in guessinggame.sh" >> README.md



