TARGET	= Sinx

CC		= gcc
CFLAGS	= -W -Wall
LINKER	= gcc
LFLAGS	= -lm -W -Wall -o 
OBJDIR	= obj
SRCDIR	= src
BINDIR	= bin

SOURCES := $(wildcard $(SRCDIR)/*.c)
INCLOUDS := $(wildcard $(SRCDIR)/*.h)
OBJECTS	:= $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

all: $(BINDIR)/$(TARGET)

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

$(BINDIR)/$(TARGET): $(BINDIR) $(OBJECTS)
	$(LINKER) $(LFLAGS) $@ $(OBJECTS)
	@echo "Linking complete!"

$(OBJDIR):
	mkdir $(OBJDIR)

$(BINDIR):
	mkdir $(BINDIR)

clean:
	rm -rf $(OBJDIR) $(BINDIR)/$(TARGET)
