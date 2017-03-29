TARGET	= Sinx

CC	= gcc
CFLAGS	= -W -Wall
LINKER	= gcc
LFLAGS	= -lm -W -Wall -o 

BINDIR	= ../bin

SOURCES := $(wildcard *.c)
OBJECTS	:= $(SOURCES:.c=.o)

.SUFFIXES : .c .o

all: $(BINDIR)/$(TARGET)

$(OBJECTS): %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

$(BINDIR)/$(TARGET): $(BINDIR) $(OBJECTS)
	$(LINKER) $(LFLAGS) $@ $(OBJECTS)
	@echo "Linking complete!"

$(BINDIR):
	mkdir $(BINDIR)

clean:
	rm -rf $(OBJECTS) $(BINDIR)/$(TARGET)
