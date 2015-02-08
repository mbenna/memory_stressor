CC=gcc
CFLAGS=-c -Wall -std=c11
LDFLAGS=
SOURCES=memory-stressor.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=memory-stressor

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

