#!/bin/bash
#
if [ $1 == "BEAMER" ] then
pdate='a' # i.e. 201705
pname='b' # i.e. Meeting_City
pauth='c' # i.e. surname
ptemp=${pdate}_${pname}_${pauth}

mv BEAMER_TeMPLaTe ${ptemp}; cd ${ptemp}
#
sed -e 's/SuNuM_TeMPLaTe/'${ptemp}'/' \
         Makefile.template  > Makefile

sed 's/SuNuM_TeMPLaTe_main/'${ptemp}'_main/' \
         SuNuM_TeMPLaTe.tex > ${ptemp}.tex

cat SuNuM_TeMPLaTe_main.tex > ${ptemp}_main.tex
fi
if [ $1 == "ABSTRACT" ] then
pdate='a' # i.e. 201705
pname='b' # i.e. Meeting_City
pauth='c' # i.e. surname
ptemp=${pdate}_${pname}_${pauth}

mv ABSTRACT_TeMPLaTe ${ptemp}; cd ${ptemp}
#
sed -e 's/ABSTRACT_TeMPLaTe/'${ptemp}'/' \
         Makefile.template  > Makefile

sed 's/ABSTRACT_TeMPLaTe_main/'${ptemp}'_main/' \
         ABSTRACT_TeMPLaTe.tex > ${ptemp}.tex

cat ABSTRACT_TeMPLaTe_main.tex > ${ptemp}_main.tex
fi
