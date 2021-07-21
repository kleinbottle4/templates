main.pdf: main.mom macros.mom
	soelim main.mom | myeqn | pdfmom -P-e -e  > main.pdf

view: main.pdf
	xdg-open main.pdf

loop:
	ls *.mom | entr -s "make &"
