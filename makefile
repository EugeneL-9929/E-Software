ASM = nasm
ASMFLAGS = -f elf64
LD = ld
TARGET = ./compile/main
SOURCE = ./src/*.asm
OBJECT = $(patsubst ./src/%.asm, ./build/%.o, $(SOURCE))

all: $(TARGET)

$(TARGET): $(OBJECT)
	$(LD) $(OBJECT) -o $(TARGET)

./build/%.o: ./src/%.asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f $(OBJECT) $(TARGET)
