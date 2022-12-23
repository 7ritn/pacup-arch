PREFIX = /usr

all:
	@printf "Run 'make install' to install pacup.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/etc
	@mkdir -p $(DESTDIR)$(PREFIX)/etc/pacman.d
	@mkdir -p $(DESTDIR)$(PREFIX)/etc/pacman.d/hooks/
	@cp -p pacup $(DESTDIR)$(PREFIX)/bin/pacup
	@cp -p hooks/* $(DESTDIR)$(PREFIX)/etc/pacman.d/hooks/

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pacup
	@rm -rf $(DESTDIR)$(PREFIX)/etc/pacman.d/hooks/pacup-*.hook
