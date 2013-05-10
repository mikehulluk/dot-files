
.PHONEY: tags dummy


all: tags

dummy:

tags: dummy
	rm -f ~/tags
	ctags -R ~/hw_to_come/morphforge/src/*
	ctags -a -R ~/hw_to_come/signalanalysis/src/*
	ctags -a -R ~/hw_to_come/simulator-test-data/src/*
	ctags -a -R ~/hw_to_come/libs/*
	ctags -a -R ~/hw_to_come/python-devtools/*
	ctags -a -R ~/hw_to_come/infandango/
