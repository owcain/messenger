CC=g++
CFLAGS=-I.
DEPS	=	
OBJ	=	main.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

messenger: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean: 
	rm -f *.o messenger

