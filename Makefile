PREFIX := /usr/local

#install by default
all: install

install:
	# copies the findmyio file to /usr/bin/findmtio, which should be in path
	cp findmyio /usr/bin/findmyio
	# marks findmyio as executable
	chmod 0755 /usr/bin/findmyio

uninstall:
	rm -rf /usr/bin/findmyio

.PHONY: all install uninstall
