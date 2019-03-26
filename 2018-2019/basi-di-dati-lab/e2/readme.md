# Esercitazione 2

- [Es1](#esercizio-1) :white_check_mark:
- [Es2](#esercizio-2) :white_check_mark:
- [Es3](#esercizio-3) :white_check_mark:
- [Es4](#esercizio-4) :white_check_mark:
- [Es5](#esercizio-5) :x:
- [Es6](#esercizio-6) :x:
- [Es7](#esercizio-7) :x:
- [Es8](#esercizio-8) :x:
- [Es9](#esercizio-9) :x:
- [Es10](#esercizio-10) :x:
- [Es11](#esercizio-11) :x:
- [Es12](#esercizio-12) :x:
- [Es13](#esercizio-13) :x:
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