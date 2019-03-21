# Esercitazione 1

- [Es1](#esercizio-1) :white_check_mark:
- [Es2](#esercizio-2) :white_check_mark:
- [Es3](#esercizio-3) :white_check_mark:
- [Es4](#esercizio-4) :white_check_mark:
- [Es5](#esercizio-5) :white_check_mark:
- [Es6](#esercizio-6) :white_check_mark:
- [Es7](#esercizio-7) :white_check_mark:
- [Es8](#esercizio-8) :white_check_mark:

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
 (2 rows)
```

### Esercizio 3

> _Popolare le tabelle Opera e Mostra con almeno altre tre tuple ciascuna._

1) popolo `opera`

```sql
INSERT INTO opera (nome, cognomeAutore, nomeAutore, museo, citta, epoca, anno)
    VALUES ('La Guernica', 'Picasso', 'Pablo',  'Arena', 'Verona', 'medioevo', 1937),
            ('Urlo', 'Munch', 'Edward', 'Arena', 'Verona', 'medioevo', 1983),
            ('Graffiti, pietra su grotta', 'Homo', 'Sapiens','CastelVecchio', 'Verona', 'pietra', 1200);
```

1-a) verifico

```sql
SELECT * FROM opera;

            nome            | cognomeautore | nomeautore |     museo     | citta  |  epoca   | anno
----------------------------+---------------+------------+---------------+--------+----------+------
 La Guernica                | Picasso       | Pablo      | Arena         | Verona | medioevo | 1937
 Urlo                       | Munch         | Edward     | Arena         | Verona | medioevo | 1983
 Graffiti, pietra su grotta | Homo          | Sapiens    | CastelVecchio | Verona | pietra   | 1200
 (3 rows)
 ```

2) popolo `mostra`
```sql
INSERT INTO mostra (titolo, inizio, fine, museo, citta, prezzo)
    VALUES ('I Picassi', '2019-03-21', '2019-04-21', 'Arena', 'Verona', 18.90),
            ('Gli antichi', '2019-05-01', '2019-05-02', 'CastelVecchio', 'Verona', 1),
            ('Ultrasuoni', '2020-01-01', '2020-01-20', 'Arena', 'Verona', 100);
```

2-a) verifico
```sql
SELECT * FROM mostra;

   titolo    |   inizio   |    fine    |     museo     | citta  | prezzo
-------------+------------+------------+---------------+--------+--------
 I Picassi   | 2019-03-21 | 2019-04-21 | Arena         | Verona |  18.90
 Gli antichi | 2019-05-01 | 2019-05-02 | CastelVecchio | Verona |   1.00
 Ultrasuoni  | 2020-01-01 | 2020-01-20 | Arena         | Verona | 100.00
 (3 rows)
 ```

### Esercizio 4

> _Provare ad inserire nella relazione Museo tuple che violino i vincoli specificati._

```sql
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'martedi', 20); -- err giorno
    -- cause: ERROR:  value too long for type character(3)
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '+39', 'MAR', 20); -- err tel
    -- cause: ERROR:  new row for relation "museo" violates check constraint "museo_numerotelefono_check"
INSERT INTO museo VALUES ('Arena', 'Verona', 'piazza Bra', '0458003204', 'MAR', 20); -- err duplicated key
    -- cause: ERROR:  duplicate key value violates unique constraint "museo_pkey"
```

### Esercizio 5

1) update table
```sql
ALTER TABLE museo ADD COLUMN sitoInternet VARCHAR(40) CHECK( sitoInternet SIMILAR TO '(http[s]?):\/\/[www]?[a-zA-Z]*\.([a-z]{2,4})');
-- ATTENZIONE: regex errata
```

prima della modifica
```sql
     Column     |         Type          | Collation | Nullable |           Default
----------------+-----------------------+-----------+----------+-----------------------------
 nome           | character varying(30) |           | not null |
 citta          | character varying(20) |           | not null | 'Verona'::character varying
 indirizzo      | character varying(50) |           | not null |
 numerotelefono | character varying(15) |           | not null |
 giornochiusura | nomigiornisettimana   |           | not null |
 prezzo         | numeric               |           | not null |
```

dopo della modifica
```sql
     Column     |         Type          | Collation | Nullable |           Default
----------------+-----------------------+-----------+----------+-----------------------------
 nome           | character varying(30) |           | not null |
 citta          | character varying(20) |           | not null | 'Verona'::character varying
 indirizzo      | character varying(50) |           | not null |
 numerotelefono | character varying(15) |           | not null |
 giornochiusura | nomigiornisettimana   |           | not null |
 prezzo         | numeric               |           | not null |
 sitointernet   | character varying(40) |           |          |
 ```
 
 2) inserisco riga
 
 ```sql
 INSERT INTO museo VALUES ('Trento', 'Trento', 'piazza Bra', '0458003204', 'MAR', 20, 'https://chiarani.it');
 ```
 
 ```sql
 SELECT * FROM museo;
 
      nome      | citta  |      indirizzo      | numerotelefono | giornochiusura | prezzo |    sitointernet
---------------+--------+---------------------+----------------+----------------+--------+---------------------
 Arena         | Verona | piazza Bra          | 0458003204     | MAR            |     20 |
 CastelVecchio | Verona | Corso Castelvecchio | 045594734      | LUN            |     15 |
 Arena         | Arco   | piazza Bra          | 0458003204     | MAR            |     20 |
 Trento        | Trento | piazza Bra          | 0458003204     | MAR            |     20 | https://chiarani.it
 (4 rows)
 ```

### Esercizio 5

> _Nell’entità Mostra modificare l’attributo prezzo in prezzoIntero ed aggiungere l’attributo prezzoRidotto con valore di default 5. Aggiungere il vincolo (di tabella o di attributo?) che garantisca che Mostra.prezzoRidotto sia minore di Mostra.prezzoIntero._

1) modifico prezzo

```sql
ALTER TABLE mostra RENAME COLUMN prezzo TO prezzoIntero;
```
quindi `mostra` diventa:

```sql
    Column    |         Type          | Collation | Nullable | Default
--------------+-----------------------+-----------+----------+---------
 titolo       | character varying(30) |           | not null |
 inizio       | date                  |           | not null |
 fine         | date                  |           | not null |
 museo        | character varying(30) |           |          |
 citta        | character varying(20) |           |          |
 prezzointero | numeric(5,2)          |           | not null |
```

2) aggiungo prezzo ridotto

```sql
ALTER TABLE mostra ADD COLUMN prezzoRidotto NUMERIC(5,2) NOT NULL DEFAULT(5);
```

quindi `mostra` diventa:

```sql
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 titolo        | character varying(30) |           | not null |
 inizio        | date                  |           | not null |
 fine          | date                  |           | not null |
 museo         | character varying(30) |           |          |
 citta         | character varying(20) |           |          |
 prezzointero  | numeric(5,2)          |           | not null |
 prezzoridotto | numeric(5,2)          |           | not null | 5
```

3) aggiungo il vincolo di tabella

```sql
UPDATE mostra SET prezzointero=10 WHERE titolo='Gli antichi';
ALTER TABLE mostra ADD CONSTRAINT prezzoRidotto CHECK(prezzoRidotto < prezzoIntero);
```

la tabella `mostra` diventa quindi:

```sql
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 titolo        | character varying(30) |           | not null |
 inizio        | date                  |           | not null |
 fine          | date                  |           | not null |
 museo         | character varying(30) |           |          |
 citta         | character varying(20) |           |          |
 prezzointero  | numeric(5,2)          |           | not null |
 prezzoridotto | numeric(5,2)          |           | not null | 5
Indexes:
    "mostra_pkey" PRIMARY KEY, btree (titolo, inizio)
Check constraints:
    "mostra_check" CHECK (fine > inizio AND fine > '1970-01-01'::date)
    "mostra_inizio_check" CHECK (inizio > '1970-01-01'::date)
    "mostra_prezzo_check" CHECK (prezzointero >= 0::numeric)
    "prezzoridotto" CHECK (prezzoridotto < prezzointero)
Foreign-key constraints:
    "mostra_museo_fkey" FOREIGN KEY (museo, citta) REFERENCES museo(nome, citta)
```

```sql    
SELECT * FROM mostra;

   titolo    |   inizio   |    fine    |     museo     | citta  | prezzointero | prezzoridotto
-------------+------------+------------+---------------+--------+--------------+---------------
 I Picassi   | 2019-03-21 | 2019-04-21 | Arena         | Verona |        18.90 |          5.00
 Ultrasuoni  | 2020-01-01 | 2020-01-20 | Arena         | Verona |       100.00 |          5.00
 Gli antichi | 2019-05-01 | 2019-05-02 | CastelVecchio | Verona |        10.00 |          5.00
 (3 rows)
```

### Esercizio 7

> _Nell’entità Museo aggiornare il prezzo aggiungendo 1 Euro alle tuple esistenti._

1) modifico la colonna

```sql
UPDATE museo SET prezzo = prezzo + 1;
```

prima della modifica:

```sql
SELECT * FROM museo;

     nome      | citta  |      indirizzo      | numerotelefono | giornochiusura | prezzo |    sitointernet
---------------+--------+---------------------+----------------+----------------+--------+---------------------
 Arena         | Verona | piazza Bra          | 0458003204     | MAR            |  20.00 |
 CastelVecchio | Verona | Corso Castelvecchio | 045594734      | LUN            |  15.00 |
 Trento        | Trento | piazza Bra          | 0458003204     | MAR            |  20.00 | https://chiarani.it
 (3 rows)
 ```
 
 dopo la modifica:
 
 ```sql
 SELECT * FROM museo;
 
      nome      | citta  |      indirizzo      | numerotelefono | giornochiusura | prezzo |    sitointernet
---------------+--------+---------------------+----------------+----------------+--------+---------------------
 Arena         | Verona | piazza Bra          | 0458003204     | MAR            |  21.00 |
 CastelVecchio | Verona | Corso Castelvecchio | 045594734      | LUN            |  16.00 |
 Trento        | Trento | piazza Bra          | 0458003204     | MAR            |  21.00 | https://chiarani.it
(3 rows)
```

### Esercizio 8

> _Nell’entità Mostra aggiornare il prezzoRidotto aumentandolo di 1 Euro per quelle mostre che hanno prezzoIntero inferiore a 15 Euro._

1) eseguo l'update

```sql
UPDATE mostra SET prezzoRidotto = prezzoRidotto + 1 WHERE prezzoIntero <= 15;
```

quindi la tabella `mostra` varia da così:

```sql
SELECT * FROM mostra;

   titolo    |   inizio   |    fine    |     museo     | citta  | prezzointero | prezzoridotto
-------------+------------+------------+---------------+--------+--------------+---------------
 I Picassi   | 2019-03-21 | 2019-04-21 | Arena         | Verona |        18.90 |          5.00
 Ultrasuoni  | 2020-01-01 | 2020-01-20 | Arena         | Verona |       100.00 |          5.00
 Gli antichi | 2019-05-01 | 2019-05-02 | CastelVecchio | Verona |        10.00 |          5.00
 (3 rows)
```

a così:

```sql
SELECT * FROM mostra;

   titolo    |   inizio   |    fine    |     museo     | citta  | prezzointero | prezzoridotto
-------------+------------+------------+---------------+--------+--------------+---------------
 I Picassi   | 2019-03-21 | 2019-04-21 | Arena         | Verona |        18.90 |          5.00
 Ultrasuoni  | 2020-01-01 | 2020-01-20 | Arena         | Verona |       100.00 |          5.00
 Gli antichi | 2019-05-01 | 2019-05-02 | CastelVecchio | Verona |        10.00 |          6.00
(3 rows)
```
