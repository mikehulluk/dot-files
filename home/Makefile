
.PHONEY: tags dummy


all: tags

dummy:

tags: dummy
	rm -f ~/tags
	ctags -R ~/hw_to_come/morphforge/src/*
	ctags -a -R ~/hw_to_come/signalanalysis/src/*
	ctags -a -R ~/hw_to_come/libs/*
