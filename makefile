PDFLATEX := pdflatex
BIBTEX := bibtex
FILE := ElementaryExperimentalHiggsPhysics

%.pdf:  %.tex
	$(PDFLATEX) $(FILE).tex && \
	$(PDFLATEX) $(FILE).tex 

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -f *.dvi *.aux *.log *.bbl *.blg *~ *.out ElementaryExperimentalHiggsPhysics.pdf
