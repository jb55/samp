
BIN ?= samp
PREFIX ?= /usr/local
CFLAGS = -Wall -Wextra

all: $(BIN)

$(BIN): samp.c
	$(CC) -Ideps -o $@ $^

install: $(BIN)
	mkdir -p $(PREFIX)/bin/
	install $< $(PREFIX)/bin/$(BIN)

deps:
	clib install

clean:
	rm -f $(BIN)

.PHONY: deps
