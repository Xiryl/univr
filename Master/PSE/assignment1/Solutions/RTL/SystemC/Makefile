DESIGN_NAME=multiplier754
ABSTRACTION_LEVEL=rtl

EXECUTABLE=bin/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).x

SYSTEMC=$$SYSTEMC_HOME

PLATFORM= $(shell uname -s)
ARCH=$(shell getconf LONG_BIT)

ifeq ($(PLATFORM),Darwin)
SYSC_LIBDIR := $(SYSTEMC)/lib-macosx
endif
ifeq ($(PLATFORM),Linux)
SYSC_LIBDIR := $(SYSTEMC)/lib-linux
endif

ifeq ($(ARCH),64)
SYSC_LIBDIR := $(SYSC_LIBDIR)64
endif

INCDIR = -I./include/ -I. -I$(SYSTEMC)/include/
LIBDIR = $(SYSC_LIBDIR)

CXX=g++
CFLAGS= -c
LD=g++

all: $(EXECUTABLE)

$(EXECUTABLE): obj/main_multiplier754.o obj/tb.o obj/tl.o obj/multiplier754_fsmd_sc.o
	@echo Building $@
	$(CXX) -g $(INCDIR) -o $@ $^ $(LIBDIR)/libsystemc.a -lpthread

obj/main_multiplier754.o: src/main_multiplier754.cpp
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $<

obj/tb.o: src/tb.cpp include/tb.hh
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $< 
	
obj/tl.o: src/tl.cpp include/tl.hh
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $<

obj/multiplier754_fsmd_sc.o: src/multiplier754_fsmd_sc.cpp include/multiplier754_fsmd_sc.hh
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $<


clean:
	@echo Cleaning
	@rm -f obj/*.o *~
	@rm -f $(EXECUTABLE)

.PHONY: all clean
