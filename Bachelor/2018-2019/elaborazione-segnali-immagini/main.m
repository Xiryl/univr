%% Pulisco progetto
clear all;
close all;
clc;

%% Carico tutti i dati

% Carico i sorgenti musicali
sorgentiMusica = LoadFile('musica');

% Carico i rumori
sorgentiRumore = LoadFile('rumore');


%% Aggiungo rumore alle canzoni

esempi = [];
seconds = 1;
fprintf(1, "Processo i dati\n");
for i = 1 : length(sorgentiMusica)
    for k = 1 : length(sorgentiRumore)
        fprintf(1, "Musica: %i, Rumore: %i \n", i,k);
        [segnaleUscita, hz, isValid] = UnioneSegnali(sorgentiMusica{i, 1}, ...
                                                     sorgentiMusica{i, 2}, ...
                                                     sorgentiRumore{k, 1}, ...
                                                     sorgentiRumore{k, 2}, ...
                                                     seconds);
        if(isValid)  
            fprintf(1, "   OK: VALIDO\n");
            esempi = [esempi; {segnaleUscita, hz, i, k}];
        else
            fprintf(1, "   ERR: NON VALIDO\n");
        end
    end
end

%% Salvo le canzoni con il rumore come casi d'uso

for i = 1 : length(esempi)
    SalvaFile("Caso_M" + esempi{i, 3} + "_R" + esempi{i, 4}, esempi{i, 1}, esempi{i, 2});
end

%% eseguo la xcorr

for jEsempi = 6 : length(esempi)
    risultati = [];
    for iMusica = 1 : length(sorgentiMusica)
        [r, lags] = xcorr(esempi{jEsempi, 1}, sorgentiMusica{iMusica, 1}(:,1));
        maxValue = max(r);
        fprintf(1, "Processato XCORR Caso_M%i_R%i <--> Musica originale: %i <--> Max: %i\n", esempi{jEsempi, 3}, esempi{jEsempi, 4}, iMusica, maxValue);
        risultati = [risultati; {jEsempi, iMusica, maxValue}];
    end
        
    findMax = 1;
    index = 1;
    for k = 1 : length(sorgentiMusica)
        if(risultati{k, 3} > findMax)
            index = k;
            findMax = risultati{k, 3};
        end
    end
    
    fprintf(1, "\tMATCH: Caso_M%i_R%i <--> Musica originale: %i, max: %i\n", esempi{risultati{index, 1}, 3}, esempi{risultati{index, 1}, 4}, risultati{index, 2}, findMax);
end