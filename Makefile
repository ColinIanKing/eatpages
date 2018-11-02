
BINDIR=/usr/bin
CFLAGS += -Os -Wall -Werror

eatpages: eatpages.o

clean:
	rm -f eatpages eatpages.o

install:
	mkdir -p ${DESTDIR}${BINDIR}
	cp eatpages ${DESTDIR}${BINDIR}
