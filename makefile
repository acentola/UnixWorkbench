README.md: guessinggame.sh
	echo "##UnixWorkbech" > README.md
	echo "Current time and date:" >> README.md
	date >>README.md
	echo "The number of lines in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
