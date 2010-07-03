VERSION=$(shell git describe --always)

all: clockwerk

clockwerk: clockwerk.in
	sed "s/VERSION=@VERSION@/VERSION=${VERSION}/" clockwerk.in > clockwerk
	chmod 755 clockwerk
