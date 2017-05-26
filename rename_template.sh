#!/bin/bash
#
if [ $1 = 'BEAMER' ]; then
pdate='a' # i.e. 201705
pname='b' # i.e. Meeting_City
pauth='c' # i.e. surname
ptemp=${pdate}_${pname}_${pauth}

mv BEAMER_TeMPLaTe ${ptemp}; cd ${ptemp}
#
sed -e 's/SuNuM_TeMPLaTe/'${ptemp}'/' Makefile.template > Makefile

sed 's/SuNuM_TeMPLaTe_main/'${ptemp}'_main/' \
         SuNuM_TeMPLaTe.tex > ${ptemp}.tex

cat SuNuM_TeMPLaTe_main.tex > ${ptemp}_main.tex
#cat SuNuM_TeMPLaTe.bib > ${sunum_template}.bib
#rm sunum_template.tex sunum_template_main.tex sunum_template.bib
fi
exit
