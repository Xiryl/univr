#include "../include/utils.h"
#include "../include/padre.h"
#include <stdio.h>


int main (int argc, char* argv[]) {
    if(argc > 2) {
        // Lancio il padre
        padre(argv[1], argv[2]);
    }
    else
    {
        // Errore
        print_line("ERRORE: Agromenti mancanti. Usa ./key_finder <file_input> <file_output>");
    }
}