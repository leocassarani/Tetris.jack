HACK_JS := $(HOME)/code/computationclub/hack-js/bin/run
JACK_FILES := $(wildcard *.jack)

Tetris.hack: $(JACK_FILES)
	jackc --hack .

Tetris.bin: $(JACK_FILES)
	jackc --bin .

run: Tetris.hack
	$(HACK_JS) Tetris.hack

prog: Tetris.bin
	iceprog -o 1024k Tetris.bin

.PHONY: run prog
