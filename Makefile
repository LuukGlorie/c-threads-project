CC = gcc
CFLAGS = -Iinc -Wall -Wextra -O2

TARGET = bin/threadpool
SRC = $(wildcard src/*.c)
OBJ = $(SRC:src/%.c=obj/%.o)

run: clean default
	./$(TARGET)

default: $(TARGET)

clean:
	rm -f obj/*.o
	rm -f bin/*

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

obj/%.o: src/%.c
	$(CC) -c $< -o $@ -Iinc