all: chuvash.bin chuvash.hfst

chuvash.bin: chuvash.foma
	foma -f $<

chuvash.hfst: chuvash.xfst

clean: chuvash.bin chuvash.hfst
	rm $<
