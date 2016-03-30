#--- Source Files ---
PROJ	:= kernel
EXT		:= bin
ASFILES	:= kernel.asm
CFILES	:=
LINKER	:=

SOBJS	:= $(ASFILES:.asm=.o)
COBJS	:= $(CFILES:.c=.o)
OBJS	:= $(SOBJS) $(COBJS)

#--- Tool Settings ---
CROSS	:= i686-elf-
AS		:= nasm
CC		:= $(CROSS)gcc
LD		:= $(CROSS)gcc

ASFLAGS	:= -f bin
CFLAGS	:=
LDFLAGS	:=

CLIBS	:=
LDLIBS	:=

all: $(PROJ).$(EXT)

$(PROJ).$(EXT): $(ASFILES)
	$(AS) $< $(ASFLAGS) -o $@

.PHONY: clean
clean:
	$(RM) $(PROJ).$(EXT)
