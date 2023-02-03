PREFIX = /usr

all:
	@printf "Run 'make install' to install pacup.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/pacup
	@cp -p pacup $(DESTDIR)$(PREFIX)/bin/pacup
	@cp -p pacup_Manual.txt $(DESTDIR)$(PREFIX)/share/doc/pacup
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/pacup

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pacup
	@rm -rf $(DESTDIR)$(PREFIX)/share/doc/pacup

