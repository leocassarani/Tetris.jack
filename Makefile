JACK_FILES := $(wildcard *.jack)
OS_DIR := ./OS

Tetris.bin: $(JACK_FILES)
	jackc --bin -o $@ $(JACK_FILES) $(OS_DIR)

Tetris.hack: $(JACK_FILES)
	jackc --hack -o $@ $(JACK_FILES) $(OS_DIR)

.PHONY: clean
clean:
	rm -f Tetris.hack Tetris.bin
