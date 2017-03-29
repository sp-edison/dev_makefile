TARGET	= Hello.x

CC	= gcc
CFLAGS	= -W -Wall
LFLAGS	= -lm -W -Wall -o 

BINDIR	= ../bin

SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)

.SUFFIXES : .c .o

all: $(BINDIR)/$(TARGET)

$(BINDIR)/$(TARGET): $(BINDIR) $(OBJS)
	$(CC) $(LFLAGS) $@ $(OBJS)
	@echo "Linking complete!"

$(OBJS): %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

$(BINDIR):
	mkdir $(BINDIR)

clean:
	rm -rf $(OBJS) $(BINDIR)/$(TARGET)
