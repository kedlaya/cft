.PHONY : all latex pdf images html install
all: pdf latex images html install

latex:
	xsltproc --xinclude -o cft-ptx.tex ~/code/mathbook/xsl/pretext-latex.xsl ptx/index.ptx

pdf:
	pdflatex -halt-on-error cft-ptx || [$$? -eq 0];
	pdflatex cft-ptx
	
images:
	~/code/mathbook/pretext/pretext -c latex-image -f svg -d html/images/ ptx/index.ptx

html: 
	xsltproc -stringparam publisher publication.xml -xinclude -o html/unused.html.ignore ~/code/mathbook/xsl/pretext-html.xsl ptx/index.ptx

install:
	cp cft-ptx.pdf ~/www/papers/;
	scp cft-ptx.pdf web:www/papers/;
	rsync -au html/ ~/www/cft/;
	rsync -au -e "ssh" html/ web:www/cft/

