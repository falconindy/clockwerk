VERSION=$(shell git describe --always)
PREFIX=usr

all: doc
doc: clockwerk.1

clockwerk.1: README.pod
	@echo todo: make a manpage

install: doc
	sed "s/VERSION=@VERSION@/VERSION=${VERSION}/" < clockwerk > ${DESTDIR}${PREFIX}/bin/clockwerk

clean:
	@rm -f clockwerk

.PHONY: clean install doc
