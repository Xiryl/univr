%%

% @function LoadFile.
% @brief Carica i file musicali
% @param folder nome cartella
% @return cellArray array 5x2 contenente la canzone e il campionamento

%%

function [cellArray] = LoadFile(folder)

    % path relativo
    filePattern = fullfile(folder, '*.mp3');
    
    % elenco dei file
    theFiles = dir(filePattern);
    
    % Crea un array di celle (tipo di dato in MATLAB).
    % Si accede al contenuto delle celle indicizzando con { }. 
    tmp = cell(length(theFiles), 2);
    
    for i = 1 : length(theFiles)
        
        % Nome del file
        fileName = theFiles(i).name;
        
        % Path completo
        fullFileName = fullfile(folder, fileName);
        
        fprintf(1, 'Sto Caricando: %s \n', fullFileName);

        % Leggo i file audio, dentro data ho i dati (double), in frequency
        % la freq. di campionamento
        [data, frequency] = audioread(fullFileName);
        
        tmp{i, 1} = data;
        tmp{i, 2} = frequency;
    end
    
    cellArray = tmp;
end
