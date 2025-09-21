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

.PHONY: all clean