export CC:=i686-elf-gcc
export LD:=i686-elf-ld
export ASM:=nasm
export CC_FLAGS:=-c -Wall -ffreestanding -Iinclude/
export LD_FLAGS:=-T linker.ld
export ASM_FLAGS:=-f elf
export ASM_MODS_FLAGS:=-f bin

SUBDIRS:=kernel modules
MAKE:=make

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@
