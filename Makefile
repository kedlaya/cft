.PHONY : all pdf images web install
all: pdf web install

pdf:
	pretext build print --clean
	
images:
	pretext generate latex-image --t web

web:
	pretext build web

install:
	cp output/print/main.pdf ~/www/papers/cft-ptx.pdf;
	scp output/print/main.pdf web:www/papers/cft-ptx.pdf;
	rsync -au output/web/ ~/www/cft/;
	rsync -au -e "ssh" output/web/ web:www/cft/

