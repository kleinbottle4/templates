main.pdf: main.tex
	pdflatex main

ps: main.tex
	latex main
	dvips main

view: main.pdf
	xdg-open main.pdf

loop:
	echo main.tex | entr -s "make &"

.PHONY:
	ps view loop
