README.md: guessinggame.sh
	echo "##UnixWorkbench" > README.md
	printf "\n" >> README.md
	echo "Current time and date:" >> README.md
	date >>README.md
	printf "\n" >> README.md
	echo "The number of lines in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
