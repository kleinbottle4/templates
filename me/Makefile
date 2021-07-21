OPTIONS = -e -me -s -R
DEPEND = macros.me bib

main.pdf: main.me $(DEPEND)
	groff $(OPTIONS) -P-y -PU -Tpdf main.me > main.pdf;

main.ps: main.me $(DEPEND)
	groff $(OPTIONS) main.me > main.ps;

main.dvi.pdf: main.dvi
	dvipdf main.dvi main.dvi.pdf

main.dvi: main.me $(DEPEND)
	groff $(OPTIONS) -Tdvi main.me > main.dvi

view: main.pdf
	zathura main.pdf

viewpdf: main.dvi.pdf
	zathura main.dvi.pdf

loop:
	ls *.me | entr -c -s "make &"

clean:
	-rm main.ps main.pdf main.dvi

.PHONY:
	view viewpdf loop clean install
