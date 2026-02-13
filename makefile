ASM = nasm
ASMFLAGS = -f elf64
LD = ld
TARGET = ./hello
SOURCE = ./hello.asm
OBJECT = ./hello.o

all: $(TARGET)

$(TARGET): $(OBJECT)
	$(LD) $(OBJECT) -o $(TARGET)

$(OBJECT): $(SOURCE)
	$(ASM) $(ASMFLAGS) $(SOURCE) -o $(OBJECT)

clean:
	rm -f $(OBJECT) $(TARGET)
