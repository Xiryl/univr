# Esercitazione 2

- [Es1](#esercizio-1) :white_check_mark:
- [Es2](#esercizio-2) :white_check_mark:
- [Es3](#esercizio-3) :white_check_mark:
- [Es4](#esercizio-4) :white_check_mark:
- [Es5](#esercizio-5) :white_check_mark:
- [Es6](#esercizio-6) :white_check_mark:
- [Es7](#esercizio-7) :white_check_mark:
- [Es8](#esercizio-8) :white_check_mark:
- [Es9](#esercizio-9) :white_check_mark:
- [Es10](#esercizio-10) :white_check_mark:
- [Es11](#esercizio-11) :white_check_mark:
- [Es12](#esercizio-12) :white_check_mark:
- [Es13](#esercizio-13) :white_check_mark:
- [Es14](#esercizio-14) :x:
- [Es15](#esercizio-15) :x:

### Esercizio 1
> _Visualizzare il numero di corsi di studi_

1) eseguo la query

```sql
SELECT COUNT(*) FROM corsostudi;
```

ottengo quindi:

```sql
 count
-------
   635
(1 row)
```


### Esercizio 2

> _Visualizzare nome, codice, ind id del preside di tutte le facolta_

1) eseguo la query

```sql
SELECT nome, codice, indirizzo, id_preside_persona FROM facolta;
```

ottengo quindi:

```sql
                  nome                  | codice |                   indirizzo                   | id_preside_persona
----------------------------------------+--------+-----------------------------------------------+--------------------
 Scienze della formazione               | W      | Lungadige Porta Vittoria 17 - 37129 Verona VR |                461
 Economia                               | C      | Lungadige Porta Vittoria, 41 - 37129 VERONA   |                297
 Lettere e filosofia                    | N      | via San Francesco 22 37129 Verona             |                734
 Scienze matematiche fisiche e naturali | S      | strada le Grazie 15 I-37134 Verona Italy      |                 87
 Lingue e letterature straniere         | L      | Via San Francesco 22 37129 Verona             |                880
 Giurisprudenza                         | G      | via C. Montanari, n.9 - 37100 Verona Italia   |                567
 Medicina e Chirurgia                   | M      | P.le Scuro, 10 37134 Verona                   |               1331
 Scienze motorie                        | 7      | Via Casorati, 43 37131 Verona                 |               1069
(8 rows)
```


### Esercizio 3

> _Trovare per ogni corso di studi che ha erogato insegnamenti nel 10/11 il suo nome e il nome delle facolta che lo gestiscono. (senza usare inserogato e facolta). Porre i risultati in ordine di nome e corso studi_

1) eseguo la query

```sql
SELECT DISTINCT corsostudi.nome, facolta.nome 
FROM corsostudi JOIN inserogato i on corsostudi.id = i.id_corsostudi 
    JOIN corsoinfacolta on corsostudi.id = corsoinfacolta.id_corsostudi
    JOIN facolta ON corsoinfacolta.id_facolta = facolta.id 
WHERE annoaccademico= '2010/2011' 
ORDER BY corsostudi.nome;
```

_Ottengo 211 righe._

### Esercizio 4

> _visualizzare nome, codice e abbreviazione di tutti i corsi di studio gestiti dalal facolta medicina e chirurgia_

```sql
SELECT facolta.nome, facolta.codice, corsostudi.abbreviazione
FROM facolta JOIN corsoinfacolta ON facolta.id = corsoinfacolta.id_facolta
    JOIN corsostudi ON corsoinfacolta.id_corsostudi = corsostudi.id
WHERE LOWER(facolta.nome) = 'medicina e chirurgia';
```

_Ottengo 236 righe._

### Esercizio 5

```sql
SELECT CS.codice, CS.nome, CS.abbreviazione
FROM CorsoStudi as CS
WHERE CS.nome ILIKE '%lingue%';
```

_Ottengo 16 righe._


### Esercizio 6

```sql
SELECT DISTINCT CS.sede
FROM CorsoStudi as CS;
```

_Ottengo 48 righe._

### Esercizio 7 

```sql
SELECT DISTINCT I.nomeins, D.nome, F.nome, INS.modulo, INS.nomemodulo, F.nome
FROM facolta AS F JOIN corsoinfacolta CSF ON F.id = CSF.id_facolta
    JOIN corsostudi AS CS ON CSF.id_corsostudi = CS.id
    JOIN inserogato AS INS ON INS.id_corsostudi = CS.id
    JOIN insegn AS I ON I.id = INS.id_insegn
    JOIN discriminante AS D ON D.id = INS.id_discriminante
WHERE INS.annoaccademico = '2010/2011' AND LOWER(F.nome) = 'economia';
```

### Esercizio 8

```sql
SELECT DISTINCT I.nomeins, D.descrizione
FROM insegn AS I JOIN inserogato AS INSE on I.id = INSE.id_insegn
    JOIN discriminante D ON INSE.id_discriminante = D.id
WHERE INSE.annoaccademico = '2009/2010'
    AND INSE.crediti IN (3,5,12)
    AND INSE.modulo = 0;
```

### Esercizio 9

```sql
SELECT I.id, I.nomeins, D.descrizione
FROM insegn AS I JOIN inserogato as INSE ON I.id = INSE.id_insegn
    JOIN discriminante AS D ON D.id = INSE.id_discriminante
    WHERE INSE.annoaccademico = '2008/2009'
    AND INSE.modulo = 0
    AND INSE.crediti > 9
    ORDER BY I.nomeins;
```

### Esercizio 10

```sql
SELECT DISTINCT I.nomeins, D.descrizione, INSE.crediti, INSE.annierogazione, INSE.modulo
FROM insegn as I JOIN inserogato AS INSE ON I.id = INSE.id_insegn
    JOIN discriminante AS D ON D.id = INSE.id_discriminante
    JOIN corsostudi C ON INSE.id_corsostudi = C.id
    WHERE C.nome = 'Laurea in Informatica'
    AND INSE.annoaccademico = '2010/2011'
    AND INSE.modulo = 0
    ORDER BY I.nomeins;
```

### Esercizio 11

```sql
SELECT MAX(INSE.crediti)
FROM inserogato AS INSE
WHERE  INSE.annoaccademico = '2010/2011';
```

### Esercizio 12

```sql
SELECT MAX(I.crediti) AS "Massimo Crediti", MIN(I.CREDITI) AS "Minimo Crediti"
FROM inserogato AS I
GROUP BY(I.annoaccademico);
```

### Esercizio 13

```sql
SELECT INSE.annoaccademico AS "Anno ACC", CS.nome AS "Corso", SUM(INSE.Crediti) AS "TOT Crediti", MIN(INSE.Crediti) AS "MIN Crediti", MAX(INSE.Crediti) AS "MAX Crediti"
FROM inserogato AS INSE
    JOIN corsostudi AS CS ON INSE.id_corsostudi = CS.id
GROUP BY(INSE.annoaccademico, CS.nome);
```

