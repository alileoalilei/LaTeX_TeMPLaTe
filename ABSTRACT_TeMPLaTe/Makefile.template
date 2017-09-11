#!/bin/bash
#################################################
###activate BIBC if bibliography ################
#################################################
RM       = rm -f
CP       = cp -f
MV       = mv -f
GS       = gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 \
	   -dNOPAUSE -dBATCH

PROG     = pdflatex
FLAGS    = -interaction=batchmode
FLAGS    = 
BIBC     = bibtex

PROJNAME = new_abstract_name
NAME     = aa
DATE     = _
ARCD     = ARCHIVE
OUTNAME  = $(PROJNAME)_$(DATE)_$(NAME)



F1_EXISTS=$(shell [ -e $(PROJNAME).tex ] && echo 1 || echo 0 )
ifeq ($(F1_EXISTS), 0)
all:
	$(info WARNING: //// FIRST RUN make copy and MODIFY the TEMPLATE INFO FOR THE NEW VERSION ////)
else
all:
	$(PROG) $(FLAGS) $(PROJNAME)
endif

bibli: 
	$(PROG) $(FLAGS) $(PROJNAME)
	$(BIBC) $(PROJNAME)
	$(PROG) $(FLAGS) $(PROJNAME)


clean:
	$(RM) *.aux *.log *.nav *.out *.snm *.bbl

copy: 
	$(CP) ABSTRACT_TeMPLaTe.tex $(PROJNAME).tex
	$(CP) ABSTRACT_main_TeMPLaTe.tex $(PROJNAME)_main.tex
	$(info TeMPLaTeS are copied. Now modify $(PROJNAME).tex)

compress:
	 $(GS) -sOutputFile=$(OUTNAME)_LRES.pdf $(OUTNAME).pdf

delete: 
	$(RM) $(OUTNAME).pdf

doc: 
	latex2rtf -a $(PROJNAME).aux -o $(OUTNAME).rtf $(PROJNAME).tex
	cp $(OUTNAME).rtf $(OUTNAME).doc

archive:
	$(MV) $(PROJNAME)_$(DATE)_$(NAME)_LRES.pdf $(ARCD)/$(PROJNAME)_$(DATE)_$(NAME)_LRES.pdf
