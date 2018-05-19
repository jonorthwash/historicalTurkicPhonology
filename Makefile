all: chuvash.hfst oldTurkic.hfst

chuvash.bin: chuvash.foma
	foma -f $<

chuvash.hfst: chuvash.xfst protoTurkic.lexc
	hfst-xfst -F $<

oldTurkic.hfst: oldTurkic.xfst protoTurkic.lexc
	hfst-xfst -F $<

clean: chuvash.bin chuvash.hfst oldTurkic.hfst
	rm $<
