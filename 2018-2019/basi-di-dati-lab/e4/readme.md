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
- Nr. Accessi: 97.42