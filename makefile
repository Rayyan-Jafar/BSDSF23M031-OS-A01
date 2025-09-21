SOURCES = src/main.c src/mystrfunctions.c src/myfilefunctions.c
OBJECTS = obj/main.o obj/mystrfunctions.o obj/myfilefunctions.o
TARGET = bin/myexe

all: $(TARGET)

$(TARGET): $(OBJECTS)
	gcc $^ -Iinclude -o $@

obj/%.o: src/%.c
	gcc -c $< -Iinclude -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
