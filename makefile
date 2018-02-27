all: README.md

README.md: guessinggame.sh
	echo "Unix Workbench Course" > README.md
	echo "Johns Hopkins University, Online Course." >> README.md
	echo "\n**Descripton**: *guessinggame.sh*. This program asks the user to guess the number of files in a directory, only stopping when they guess correctly." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines of code:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
