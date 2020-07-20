OS := linux
ARCH ?= amd64
BINDIR := bin
BIN := main

.PHONY: all
all: clean build

.PHONY: build
build:
	GOOS=$(OS) GOARCH=$(ARCH) go build -o $(BINDIR)/$(BIN)

.PHONY: pkg
pkg: build
	zip $(BIN).zip $(BINDIR)/$(BIN)

.PHONY: clean
clean:
	rm -f $(BIN).zip
	rm -f $(BINDIR)/$(BIN)


