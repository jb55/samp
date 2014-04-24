
BIN ?= samp
PREFIX ?= /usr/local
CFLAGS = -Wall -Wextra

all: $(BIN)

$(BIN): samp.c
	$(CC) -Ideps -o $@ $^

install: $(BIN)
	install $< $(PREFIX)/bin

deps:
	clib install

clean:
	rm -f $(BIN)

.PHONY: deps
