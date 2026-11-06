AS=nasm
LD=ld

ASFLAGS=-f elf64

all:
	$(AS) $(ASFLAGS) main.s 	-o main.o
	$(AS) $(ASFLAGS) syscalls.s -o syscalls.o
	$(AS) $(ASFLAGS) lib.s 		-o lib.o
	$(AS) $(ASFLAGS) calc.s 	-o calc.o
	$(LD) main.o \
		lib.o \
		syscalls.o \
		calc.o \
		-o point-calc

clean:
	rm -rf *.o
	rm -rf point-calc
