AR65=$(CC65_DIR)/bin/ar65
CC65=$(CC65_DIR)/bin/cc65
CA65=$(CC65_DIR)/bin/ca65
CL65=$(CC65_DIR)/bin/cl65
LD65=$(CC65_DIR)/bin/ld65

TARGET = bin/rom

INCDIR= --asm-include-dir $(CC65_DIR)/asminc --include-dir $(CC65_DIR)/include --include-dir ./inc/
LIBDIR= --lib-path $(CC65_DIR)/lib
CONFIG= --config ./cfg/sim6502.cfg
ARCHIT= --target sim6502 --cpu 6502

# Set the c flags.
CFLAGS=-O -Oi -Os #--verbose

# Change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

# Get all the sources, both c and asm
SOURCES  := $(wildcard $(SRCDIR)/*.c $(SRCDIR)/*.s)
# Generate list of object files, but replace .c with .o
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(SRCDIR)/%.o)
# This time replace .s with .o
OBJECTS  := $(OBJECTS:$(SRCDIR)/%.s=$(SRCDIR)/%.o)

all:
	@echo "Building..."
	make $(TARGET)

$(TARGET): $(OBJECTS)
	@echo "Linking $@\n"
	$(CL65) $(ARCHIT) $(CONFIG) $(INCDIR) $(LIBDIR) -m $(TARGET).map -T $^ -o $@
	@xxd -g 1 $(TARGET) | cut -c11-57 > $(TARGET).mem
	@sed -i '1025d' $(TARGET).mem
	@sed -i '1024c\ff ff ff ff ff ff ff ff ff ff 01 C0 00 00 00 00' $(TARGET).mem
	@rm $(TARGET)

src/%.o: src/%.c
	@mkdir -p bin
	@echo "    Building $@"
	$(CL65) -c $(CFLAGS) $(ARCHIT) $(CONFIG) $(INCDIR) -l $(BINDIR)/$*.lst $< -o $@

src/%.o: src/%.s
	@mkdir -p bin
	@echo "    Building $@"
	$(CL65) -c $(CFLAGS) $(ARCHIT) $(CONFIG) $(INCDIR) -l $(BINDIR)/$*.lst $< -o $@

clean:
	@rm -f $(SRCDIR)/*.o
	@rm -rf bin
