SOURCES = src/main.c src/mystrfunctions.c src/myfilefunctions.c

OBJECTS = obj/mystrfunctions.o obj/myfilefunctions.o
MAIN = obj/main.o

DYNAMIC_LIB = lib/libmyutils.so
DYNAMIC_EXE = bin/client_dynamic

all: $(DYNAMIC_EXE)

$(DYNAMIC_EXE): $(MAIN) $(DYNAMIC_LIB)
	gcc $(MAIN) -Llib -lmyutils -Wl,-rpath=lib -o $@

obj/%.o: src/%.c
	gcc -c $< -Iinclude -fPIC  -o $@

$(DYNAMIC_LIB): $(OBJECTS)
	gcc -shared $^ -o $@

clean:
	rm -f obj/*.o $(DYNAMIC_LIB) $(DYNAMIC_EXE)

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man

install: $(DYNAMIC_EXE) man/man1/client_dynamic.1
	install -d $(BINDIR) $(MANDIR)/man1
	install -m 755 $(DYNAMIC_EXE) $(BINDIR)/client_dynamic
	install -m 644 man/man1/client_dynamic.1 $(MANDIR)/man1/client_dynamic.1

uninstall:
	rm -f $(BINDIR)/client_dynamic
	rm -f $(MANDIR)/man1/client_dynamic.1

.PHONY: all clean install uninstall
