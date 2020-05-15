HACK_JS := $(HOME)/code/computationclub/hack-js/bin/run
JACK_FILES := $(wildcard *.jack)

Tetris.hack: $(JACK_FILES)
	jackc --hack .

run: Tetris.hack
	$(HACK_JS) Tetris.hack

.PHONY: run
