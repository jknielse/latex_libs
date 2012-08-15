echo "TEXINPUTS.pdflatex = .;\$TEXMF/tex/{latex,generic,};`pwd`/texlibs/{latex,generic,}//" > /etc/texmf/texmf.d/35aditlibs.cnf
update-texmf
