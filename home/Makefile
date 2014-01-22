
.PHONEY: tags dummy


all: tags

dummy:

tags: dummy
	rm -f ~/tags
	#ctags -R ~/hw/morphforge/src/*
	ctags -R /local/scratch/mh735/hw/morphforge/src/*
	ctags -a -R /local/scratch/mh735/hw/signalanalysis/src/*
	ctags -a -R ~/hw/signalanalysis/src/*
	ctags -a -R ~/hw/simulator-test-data/src/*
	ctags -a -R ~/hw/libs/*
	ctags -a -R ~/hw/python-devtools/*
	ctags -a -R ~/hw/infandango/
	ctags -a -R ~/hw/NeuroUnits//
	ctags -a -R ~/hw/hdf-jive/
	ctags -a -R ~/hw/BlueVec/
	ctags -a -R ~/hw/PyNN/src/
	ctags -a -R /local/scratch/mh735/hw/morphforge/
	ctags -a -R /local/scratch/mh735/hw/signalanalysis
	ctags -a -R ~/hw/nineml/lib9ml/python/
