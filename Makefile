CC=gcc
CCFLAGS=-std=gnu99 -Wextra -Wall -Wunused
INSTALLDIR=/usr/local/bin
TARGET=am2321

$(TARGET):
	$(CC) -o $(TARGET) $(TARGET).c

all: $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm $(TARGET)

install: $(TARGET)
	install $(TARGET) $(INSTALLDIR)

uninstall:
	rm $(INSTALLDIR)/$(TARGET)
