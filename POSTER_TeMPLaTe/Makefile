#!/bin/sh
PROG     = pdflatex
OPTION   = -interaction=batchmode
OPTION   = 
PROJNAME = amemr2017
BIBC = bibtex
RM       = rm -f
CP       = cp -f
MV       = mv -f
GS       = gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH

all: 
	$(PROG) $(OPTION) $(PROJNAME)
	$(PROG) $(OPTION) $(PROJNAME)
	$(RM) *.aux *.log *.nav *.out *.snm *.toc

bibli:  
	$(PROG) $(OPTION) $(PROJNAME) $(BIBC) 
	$(PROJNAME) $(PROG) 
	$(OPTION) $(PROJNAME)


clean:
	$(RM) *.aux *.log *.nav *.out *.snm 

copy:
	$(CP) $(PROJNAME).pdf $(PROJNAME)_last.pdf

compress:
	 $(GS) -sOutputFile=$(PROJNAME)_LRES.pdf $(PROJNAME).pdf
