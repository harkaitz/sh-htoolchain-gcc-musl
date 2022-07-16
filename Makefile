DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-htoolchain-gcc-musl
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-htoolchain-gcc-musl
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/setup-devel-c-gcc-musl  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
