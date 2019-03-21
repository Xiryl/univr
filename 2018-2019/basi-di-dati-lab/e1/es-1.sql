-- Fabio Chiarani
-- Lezione 1, GIOVEDI 21 MARZO 2019

-- ********************** --
--    Pulizia Database    --
-- ********************** --

DROP TABLE IF EXISTS mostra;
DROP TABLE IF EXISTS orario;
DROP TABLE IF EXISTS opera;
DROP TABLE IF EXISTS museo;

DROP TYPE IF EXISTS nomiGiorniSettimana;
DROP TYPE IF EXISTS epoche;

-- ********************** --
--    Creazione Tipi      --
-- ********************** --

-- Creo un tipo per i giorni della settimana
CREATE DOMAIN nomiGiorniSettimana AS CHAR(3) 
    CHECK( VALUE IN('LUN', 'MAR', 'MER', 'GIO', 'VEN', 'SAB', 'DOM'));

-- Creo un tipo per le epoche
CREATE DOMAIN epoche AS VARCHAR(10) 
    CHECK( VALUE IN('medioevo', 'pietra'));

-- ********************** --
--    Creazione Tabelle   --
-- ********************** --


-- TABELLA MUSEO
CREATE TABLE museo (
    nome VARCHAR(30)
        CHECK( CHAR_LENGTH(museo.nome) >= 5) ,                                        -- verifico che abbia almeno 5 caratteri
    citta VARCHAR(20)
        DEFAULT 'Verona'                                                        -- di default è Verona
        CHECK( CHAR_LENGTH(museo.citta) >= 3 ),                                       -- verifico che abbia almeno 3 caratteri
    indirizzo VARCHAR(50) NOT NULL
        CHECK( CHAR_LENGTH(museo.indirizzo) >= 6),                                    -- verifico che abbia almeno 6 caratteri
    numeroTelefono VARCHAR(15) NOT NULL
        CHECK( numeroTelefono SIMILAR TO '(\+[0-9]{2,4})*([0-9]{4,10})'),       -- es. +00393335677891
    giornoChiusura nomiGiorniSettimana NOT NULL,
    prezzo NUMERIC(5,2) NOT NULL
        CHECK( prezzo >= 0),                                                    -- verifico che sia >= 0                                                            -- di default lo assegno a 0 
    PRIMARY KEY(nome, citta)
);

-- TABELLA MOSTRA <---> MUSEO
CREATE TABLE mostra (
    titolo VARCHAR(30),
    inizio DATE NOT NULL
        CHECK( inizio > '1970-01-01' ),
    fine DATE NOT NULL
        CHECK( fine > inizio AND fine > '1970-01-01' ),
    museo VARCHAR(30),
    citta VARCHAR(20),
    prezzo NUMERIC(5,2) NOT NULL
        CHECK( prezzo >= 0),                                                    -- verifico che sia >= 0
    FOREIGN KEY (museo, citta)                                                  -- esporto la chiave
        REFERENCES museo(nome, citta),
    PRIMARY KEY(titolo, inizio)
);

-- TABELLA OPERA <---> MUSEO
CREATE TABLE opera(
    nome VARCHAR(30),
    cognomeAutore VARCHAR(20)
        CHECK( CHAR_LENGTH(opera.cognomeAutore) >= 4),                                -- controllo che sia almeno 4 caratteri
    nomeAutore VARCHAR(20)
        CHECK( CHAR_LENGTH(opera.nomeAutore) >= 4),                                   -- controllo che sia almeno 4 caratteri
    museo VARCHAR(30),
    citta VARCHAR(20),
    epoca epoche NOT NULL,
    anno INTEGER NOT NULL,
    PRIMARY KEY (nome, cognomeAutore, nomeAutore),                               -- chiavi primarie
    FOREIGN KEY (museo, citta)                                                  -- esporto la chiave
        REFERENCES museo(nome, citta)
);

CREATE TABLE orario (
    progressivo SERIAL PRIMARY KEY,
    museo VARCHAR(30),
    citta VARCHAR(20),
    giorno nomiGiorniSettimana NOT NULL,
    orarioApertura TIME WITH TIME ZONE NOT NULL, 
    orarioChiusura TIME WITH TIME ZONE NOT NULL, 
    FOREIGN KEY (museo, citta)                                                  -- esporto la chiave
        REFERENCES museo(nome, citta)
);


-- INSERT

