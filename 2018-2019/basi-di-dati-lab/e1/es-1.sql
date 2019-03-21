-- Fabio Chiarani
-- Lezione 1, GIOVEDI 21 MARZO 2019

-- Init tabelle
-- se uso CASCADE mi elimina anche tutte le tabelle collegate a quella che la droppo
DROP TABLE IF EXISTS mostra;
DROP TABLE IF EXISTS orario;
DROP TABLE IF EXISTS opera;
DROP TABLE IF EXISTS museo;

-- init types
DROP TYPE IF EXISTS nomiGiorniSettimana;
DROP TYPE IF EXISTS epoche;

-- Creo un tipo per i giorni della settimana
CREATE DOMAIN nomiGiorniSettimana AS CHAR(3) 
    CHECK( VALUE IN('LUN', 'MAR', 'MER', 'GIO', 'VEN', 'SAB', 'DOM'));

CREATE DOMAIN epoche AS VARCHAR(10) 
    CHECK( VALUE IN('medioevo', 'pietra'));

-- Creazione Tabelle

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
-- Inserire nell’entità Museo le seguenti tuple:
-- (Arena, Verona, piazza Bra, 045 8003204, martedì, 20), (CastelVecchio, Verona, Corso Castelvecchio, 045 594734, lunedì, 15);
INSERT INTO museo (nome, citta, indirizzo, numeroTelefono, giornoChiusura, prezzo) 
    VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'MAR', 20),
           ('CastelVecchio', 'Verona', 'Corso Castelvecchio', '045594734', 'LUN', 15);

-- Esercizio 3
-- Popolare le tabelle Opera e Mostra con almeno altre tre tuple ciascuna.
INSERT INTO opera (nome, cognomeAutore, nomeAutore, museo, citta, epoca, anno)
    VALUES ('La Guernica', 'Picasso', 'Pablo',  'Arena', 'Verona', 'medioevo', 1937),
            ('Urlo', 'Munch', 'Edward', 'Arena', 'Verona', 'medioevo', 1983),
            ('Graffiti, pietra su grotta', 'Homo', 'Sapiens','CastelVecchio', 'Verona', 'pietra', 1200);

INSERT INTO mostra (titolo, inizio, fine, museo, citta, prezzo)
    VALUES ('I Picassi', '2019-03-21', '2019-04-21', 'Arena', 'Verona', 18.90),
            ('Gli antichi', '2019-05-01', '2019-05-02', 'CastelVecchio', 'Verona', 1),
            ('Ultrasuoni', '2020-01-01', '2020-01-20', 'Arena', 'Verona', 100);

--Esercizio 4
--Provare ad inserire nella relazione Museo tuple che violino i vincoli specificati.
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'martedi', 20); -- err GIORNO
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '+39', 'MAR', 20); -- err TEL
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'MAR', 20); -- err tupla chiave esistente

-- Esercizio 5
-- Nell’entità Museo, aggiungere l’attributo sitoInternet e inserire gli opportuni valori.
ALTER TABLE museo ADD COLUMN sitoInternet VARCHAR(40) CHECK( sitoInternet SIMILAR TO '(http[s]?):\/\/[www]?[a-zA-Z]*\.([a-z]{2,4})');
INSERT INTO museo VALUES ('Trento', 'Trento', 'piazza Bra', '0458003204', 'MAR', 20, 'https://chiarani.it');

-- Esercizio 6
-- Nell’entità Mostra modificare l’attributo prezzo in prezzoIntero ed aggiungere l’attributo prezzoRidotto con valore di default 5.

ALTER TABLE mostra RENAME COLUMN prezzo TO prezzoIntero;
ALTER TABLE mostra ADD COLUMN prezzoRidotto NUMERIC(5,2) NOT NULL DEFAULT(5);

-- Aggiungere il vincolo (di tabella o di attributo?) che garantisca che Mostra.prezzoRidotto sia minore di Mostra.prezzoIntero.
UPDATE mostra SET prezzointero=10 WHERE titolo='Gli antichi';
ALTER TABLE mostra ADD CONSTRAINT prezzoRidotto CHECK(prezzoRidotto < prezzoIntero);

-- Esercizio 7
-- Nell’entità Museo aggiornare il prezzo aggiungendo 1 Euro alle tuple esistenti.
UPDATE museo SET prezzo = prezzo + 1;