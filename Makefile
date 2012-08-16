CC=pdflatex
TEXFILE=git
FLAGS=-interaction=nonstopmode

.PHONY: all clean

$(TEXFILE).pdf: $(TEXFILE).tex
	$(CC) $(FLAGS) $(TEXFILE) 

clean:	
	rm -f *.aux *.bbl *.blg *.dvi *.fdb_latexmk *.glg *.glo *.gls *.idx *.ilg *.ind \
		*.ist *.lof *.log *.lot *.nav *.nlo *.out *.pdfsync *.ps *.snm *.synctex.gz \
		*.toc *.vrb *.maf *.mtc *.mtc0
	rm -f $(TEXFILE).pdf

all: clean $(TEXFILE).pdf