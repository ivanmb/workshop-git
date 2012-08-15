CC=pdflatex
OBJS=git.tex
.PHONY: all clean

slides:
	$(CC) $(OBJS)

clean:	
	rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg *.ind \
		*.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm *.synctex.gz \
		*.toc *.vrb *.maf *.mtc *.mtc0
	rm -f git.pdf

all: clean slides

