#!/bin/bash
#
<<<<<<< HEAD
if [ $1 = 'BEAMER' ]; then
=======
if [ $1 == "BEAMER" ]; then
>>>>>>> 44190a64f26f508f126107b6739cfd4a95ca63e8
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
<<<<<<< HEAD
#cat SuNuM_TeMPLaTe.bib > ${sunum_template}.bib
#rm sunum_template.tex sunum_template_main.tex sunum_template.bib
fi
exit
=======
fi
if [ $1 == "ABSTRACT" ]; then
pdate='a' # i.e. 201705
pname='b' # i.e. Meeting_City
pauth='c' # i.e. surname
ptemp=${pdate}_${pname}_${pauth}

mv ABSTRACT_TeMPLaTe ${ptemp}; cd ${ptemp}
#
sed -e 's/new_abstract_name/'${ptemp}'/' \
         Makefile.template  > Makefile

fi
>>>>>>> 44190a64f26f508f126107b6739cfd4a95ca63e8
