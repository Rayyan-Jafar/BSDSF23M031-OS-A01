SOURCES = src/main.c src/mystrfunctions.c src/myfilefunctions.c
OBJECTS = obj/mystrfunctions.o obj/myfilefunctions.o
TARGET = bin/client-static
LIB = lib/myutils.a
MAIN = obj/main.o

all: $(TARGET)

$(TARGET): $(MAIN) $(LIB)
	gcc $(MAIN) -Llib -lmyutils -o $@

obj/%.o: src/%.c
	gcc -c $< -Iinclude -o $@

$(LIB): $(OBJECTS)
	ar -rcs $@ $^

clean:
	rm -f $(OBJECTS) $(TARGET) $(LIB)
