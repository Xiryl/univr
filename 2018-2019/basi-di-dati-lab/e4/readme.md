### Rimozione indici:
```sql
DROP INDEX id_cs_index;
```

### Esercizio 1

Query:

```sql
EXPLAIN SELECT DISTINCT sede FROM corsostudi;
```

Produce il seguente query plan:

```
                            QUERY PLAN
-------------------------------------------------------------------
 HashAggregate  (cost=96.94..97.42 rows=48 width=8)
   Group Key: sede
   ->  Seq Scan on corsostudi  (cost=0.00..95.35 rows=635 width=8)
(3 rows)
```

Ottenendo quindi
- Nr. Accessi: _97.42_
- Indice: _nessuno_

#### Ottimizzazzione
Provo a inserire un indice sulla chiave primaria della tabella

```sql
CREATE INDEX id_cs_index ON corsostudi(id);
ANALYZE corsostudi;

CREATE INDEX id_cs_index ON corsostudi(nome);
ANALYZE corsostudi;
```

Ottenendo un indice btree:
```sql
Indexes:
    "id_cs_index" btree (id)
```

#### Test

Ri-eseguiamo la query:
```
                            QUERY PLAN
-------------------------------------------------------------------
 HashAggregate  (cost=96.94..97.42 rows=48 width=8)
   Group Key: sede
   ->  Seq Scan on corsostudi  (cost=0.00..95.35 rows=635 width=8)
(3 rows)
```


Ottenendo quindi
- Nr. Accessi: _97.42_
- Indice: id

Nessun miglioramento. La query non può essere migliorata.