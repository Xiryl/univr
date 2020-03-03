function SalvaFile(caso, segnale, frequenza)
    % creo file con estensione .m4a
    fileName = caso + ".m4a";
    
    % path
    filePattern = fullfile('casi', fileName);
    fprintf("Sto salvando: %s\n", filePattern);
    
    % salvo il file audio
    audiowrite(filePattern, segnale, frequenza)
end