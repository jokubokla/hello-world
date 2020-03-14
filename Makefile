PROJECT=hello
CC=gcc
CFLAGS=-I.
#DEPS = $(PROJECT).h
OBJ = $(PROJECT).o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(PROJECT): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

all: $(PROJECT)

clean:
	rm *.o

