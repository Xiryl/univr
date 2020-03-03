%%
% @function SommaSegnali.
%%

function [segnale, hz, isValid] = UnioneSegnali(audio,   ...
                                             audioHz, ...
                                             rumore,      ...
                                             rumoreHz,    ...
                                             duration)
                                         
    isValid = true;
    
    if(audioHz ~= 44100)
        fprintf(1, '   ERR: Frequenza di campionamento diversa da 44100 \n');
        segnale = [];
        hz = 0;
        isValid = false;
    end
    
    if( audioHz ~= rumoreHz)
        fprintf(1, '   ERR: Frequenza della musica diversa da quella del rumore \n');
        segnale = [];
        hz = 0;
        isValid = false;
    end
    
    if(isValid == true)
        % Taglio del primo segnale.
        % Rendo segnale mono, ovvero prendo un solo canale,
        % nello specifico, il sinistro.
        originalCut = audio(1:audioHz*duration, 1);
        % Taglio del secondo segnale.
        % Rendo segnale mono, ovvero prendo un solo canale,
        % nello specifico, il sinistro.
        noiseCut = rumore(1:rumoreHz*duration, 1);
        % Somma dei segnali.
        result = originalCut + noiseCut;
        
        % @FIX Risultato./max(abs(Risultato))
        %      Warning: Data clipped when writing file.
        segnale = result./max(abs(result));
        hz = audioHz;
        isValid = true;
    end
end