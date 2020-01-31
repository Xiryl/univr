DESIGN_NAME=multiplier
ABSTRACTION_LEVEL=UT

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

LIBDIR = $(SYSC_LIBDIR)
LIBS = $(SYSC_LIBDIR)/libsystemc.a -lpthread

INCDIR = -I./include/ -I. -I$(SYSTEMC)/include/



CXX=g++
CFLAGS= -c
LD=g++

all: $(EXECUTABLE)

$(EXECUTABLE): obj/main_$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).o obj/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL)_testbench.o obj/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).o
	@echo Building $@
	$(CXX) -g $(INCDIR) -o $@ $^ $(LIBDIR)/libsystemc.a -lpthread

obj/main_$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).o: src/main_$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).cc
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $< 

obj/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL)_testbench.o: src/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL)_testbench.cc include/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL)_testbench.h
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $< 

obj/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).o: src/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).cc include/$(DESIGN_NAME)_$(ABSTRACTION_LEVEL).h
	@echo Building $@
	$(CXX) -g $(CFLAGS) $(INCDIR) -o $@ $<


clean:
	@echo Cleaning
	@rm -f obj/*.o *~
	@rm -f $(EXECUTABLE)

.PHONY: all clean
