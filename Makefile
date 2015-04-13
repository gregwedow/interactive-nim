all: mainexec libhello.so

mainexec:
	nim c --hints:off -o:bin/main main.nim

libhello.so:
	cd libhello; $(MAKE)