# Esercitazione 1

### Esercizio 1

> _Scrivere il codice PostgreSQL che generi tutte le tabelle. Per gli attributi di cui non è stato specificato il tipo, scegliere quello opportuno. Specificare tutti i vincoli possibili, sia intra- sia inter-relazionali._

Soluzione:

1) creo i domini di appoggio

```sql
CREATE DOMAIN nomiGiorniSettimana AS CHAR(3) 
    CHECK( VALUE IN('LUN', 'MAR', 'MER', 'GIO', 'VEN', 'SAB', 'DOM'));

CREATE DOMAIN epoche AS VARCHAR(10) 
    CHECK( VALUE IN('medioevo', 'pietra'));
```

2) creo le tabelle

```sql
CREATE TABLE museo (
    nome VARCHAR(30)
        CHECK( CHAR_LENGTH(museo.nome) >= 5) ,                                      
    citta VARCHAR(20)
        DEFAULT 'Verona'                                                       
        CHECK( CHAR_LENGTH(museo.citta) >= 3 ),                                     
    indirizzo VARCHAR(50) NOT NULL
        CHECK( CHAR_LENGTH(museo.indirizzo) >= 6),                                   
    numeroTelefono VARCHAR(15) NOT NULL
        CHECK( numeroTelefono SIMILAR TO '(\+[0-9]{2,4})*([0-9]{4,10})'),      
    giornoChiusura nomiGiorniSettimana NOT NULL,
    prezzo NUMERIC(5,2) NOT NULL
        CHECK( prezzo >= 0),                                                                                        
    PRIMARY KEY(nome, citta)
);

CREATE TABLE mostra (
    titolo VARCHAR(30),
    inizio DATE NOT NULL
        CHECK( inizio > '1970-01-01' ),
    fine DATE NOT NULL
        CHECK( fine > inizio AND fine > '1970-01-01' ),
    museo VARCHAR(30),
    citta VARCHAR(20),
    prezzo NUMERIC(5,2) NOT NULL
        CHECK( prezzo >= 0),                                                   
    FOREIGN KEY (museo, citta)                                               
        REFERENCES museo(nome, citta),
    PRIMARY KEY(titolo, inizio)
);

CREATE TABLE opera(
    nome VARCHAR(30),
    cognomeAutore VARCHAR(20)
        CHECK( CHAR_LENGTH(opera.cognomeAutore) >= 4),                              
    nomeAutore VARCHAR(20)
        CHECK( CHAR_LENGTH(opera.nomeAutore) >= 4),                                
    museo VARCHAR(30),
    citta VARCHAR(20),
    epoca epoche NOT NULL,
    anno INTEGER NOT NULL,
    PRIMARY KEY (nome, cognomeAutore, nomeAutore),                              
    FOREIGN KEY (museo, citta)                                             
        REFERENCES museo(nome, citta)
);

CREATE TABLE orario (
    progressivo SERIAL PRIMARY KEY,
    museo VARCHAR(30),
    citta VARCHAR(20),
    giorno nomiGiorniSettimana NOT NULL,
    orarioApertura TIME WITH TIME ZONE NOT NULL, 
    orarioChiusura TIME WITH TIME ZONE NOT NULL, 
    FOREIGN KEY (museo, citta)                                                
        REFERENCES museo(nome, citta)
);
```

### Esercizio 2

> _Inserire nell’entità **Museo** le seguenti tuple:_

`(Arena, Verona, piazza Bra, 045 8003204, martedì, 20), 
(CastelVecchio, Verona, Corso Castelvecchio, 045 594734, lunedì, 15);`

Soluzione:

1) creo le insert

```sql
INSERT INTO museo (nome, citta, indirizzo, numeroTelefono, giornoChiusura, prezzo) 
    VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'MAR', 20);
```

2) verifico

```sql
SELECT * FROM museo;

     nome      | citta  |      indirizzo      | numerotelefono | giornochiusura | prezzo
---------------+--------+---------------------+----------------+----------------+--------
 Arena         | Verona | piazza Bra          | 0458003204     | MAR            |     20
 CastelVecchio | Verona | Corso Castelvecchio | 045594734      | LUN            |     15
```
