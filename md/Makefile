main.pdf: main.md
	pandoc main.md -t beamer -o main.pdf

#main.tex: main.md
#	echo """\documentclass{article}
#
#\usepackage{amsmath,amssymb}
#
#\begin{document}
#""" | tee main.tex
#	smu main.md | h2l | tee -a main.tex
#	echo "\end{document}" | tee -a main.tex

view: main.md
	smu main.md > main.html
	st w3m main.html

viewpdf: main.pdf
	xdg-open main.pdf

