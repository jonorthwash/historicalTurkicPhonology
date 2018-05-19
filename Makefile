all: chuvash.bin chuvash.hfst

chuvash.bin: chuvash.foma
	foma -f $<

chuvash.hfst: chuvash.xfst
	cat $< | hfst-xfst --pipe-mode=input

clean: chuvash.bin chuvash.hfst
	rm $<
