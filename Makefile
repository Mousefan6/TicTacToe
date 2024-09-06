ROOTNAME=TicTacToe
RUNOPTIONS=

CC=gcc
CFLAGS= -g -rdynamic -I.
LIBS =
DEPS = 

OBJ = $(ROOTNAME).o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ROOTNAME): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)  $(LIBS)

clean:
	rm $(ROOTNAME).o $(ROOTNAME)

run: $(ROOTNAME)
	./$(ROOTNAME) $(RUNOPTIONS)