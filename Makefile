TARGET1=main

SOURCES1=main.c
 
OBJECTS1=$(patsubst %.c,%.o,$(SOURCES1))

all: main

main: $(OBJECTS1)
	gcc $(OBJECTS1) -o $(TARGET1)

clean:
	rm -f $(OBJECTS1) $(TARGET1)

%.o:%.c
	gcc -g -c $< -o $@