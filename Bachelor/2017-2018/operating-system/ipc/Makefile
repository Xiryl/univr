# Name
PROJECT := key_finder

# Folders
D_SRC     := src/
D_BUILD   := build/
D_BIN     := bin/
D_DOC     := doc/
D_INCLUDE := include/

# Compiler
CC      := gcc
LD      := gcc
CFLAGS  := -I $(D_INCLUDE)

# Files
C_FILES   := $(wildcard $(D_SRC)*.c)
OBJ_FILES := $(C_FILES:$(D_SRC)%.c=$(D_BUILD)%.o)

# Compilo tutti i .c in .o
$(D_BUILD)%.o : $(D_SRC)%.c | MAKE_DIR_BUILD
	@echo Compilo $< -> $@
	$(CC) $(DEBUG) $(CFLAGS) -c $< -o $@  $(THREAD) 

# Linko il progetto
$(PROJECT) : $(OBJ_FILES)
	@echo "Linko $(PROJECT)..."
	$(LD) $(LDFLAGS) $(OBJ_FILES) -o $(D_BUILD)$(PROJECT) $(THREAD)

# Creo la cartella 'build/' se non esiste
MAKE_DIR_BUILD : 
	mkdir -p $(D_BUILD)

# Creo la cartella 'bin/' se non esiste
MAKE_DIR_BIN : 
	mkdir -p $(D_BIN)

# compilo il progetto
all : $(PROJECT)

# Svuoto 'build/*.o' ed elimino l'eseguibile al suo interno
clean : 
	@echo "Pulisco.."
	rm  $(OBJ_FILES) $(D_BUILD)$(PROJECT)

# Doxygen
doc :
	@echo "Genero la documentazione doxygen..."
	doxygen doxygen.cfg

# Helper
help : 
	@echo "Comandi make disponibili:"
	@echo "all    : compila il codice sorgente"
	@echo "install: copia l'eseguibile su /bin"
	@echo "doc    : genera la documentazione"
	@echo "threads: compila il codice usando le threads"
	@echo "clean  : rimuove i file temporanei di compilazione"
	@echo "debug  : compila il codice sorgente con gdb"

# Copio l'eseguibile in 'bin/('
install : MAKE_DIR_BIN | $(PROJECT)
	cp $(D_BUILD)$(PROJECT) $(D_BIN)

# Compilo la versione con i thread
threads : THREAD := -D MULTITHREAD -lpthread
threads : $(PROJECT)

# Compilo la versione per il debug
debug : DEBUG := -ggdb
debug : $(PROJECT)

.PHONY: all clean doc help install threads debug