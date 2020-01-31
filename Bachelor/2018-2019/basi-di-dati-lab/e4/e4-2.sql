-- ESERCIZIO 2

-- ELIMINO GLI INDICI
DROP INDEX  id_insegn_index;
DROP INDEX anno_index;

-- CREO GLI INDICI
CREATE INDEX id_insegn_index ON insegn(id);
CREATE INDEX anno_index ON inserogato(annoaccademico varchar_pattern_ops);

-- ESEGUO ANALYZE
ANALYZE insegn;
ANALYZE inserogato;

-- EXPLAIN QUERY
EXPLAIN SELECT DISTINCT INS.nomeins, I.id_facolta
FROM inserogato AS I
  JOIN insegn AS INS ON I.id_insegn = INS.id
WHERE I.annoaccademico = '2013/2014';

-- **** PRIMA ****
-- 
--                                     QUERY PLAN
-- ----------------------------------------------------------------------------------
--  HashAggregate  (cost=6354.67..6406.22 rows=5155 width=43)
--    Group Key: ins.nomeins, i.id_facolta
--    ->  Hash Join  (cost=287.80..6328.90 rows=5155 width=43)
--          Hash Cond: (i.id_insegn = ins.id)
--          ->  Seq Scan on inserogato i  (cost=0.00..5970.21 rows=5155 width=8)
--                Filter: ((annoaccademico)::text = '2013/2014'::text)
--          ->  Hash  (cost=185.69..185.69 rows=8169 width=43)
--                ->  Seq Scan on insegn ins  (cost=0.00..185.69 rows=8169 width=43)
-- (8 rows)

-- ******************************************************************************************

-- **** DOPO ****
--                                        QUERY PLAN
-- -----------------------------------------------------------------------------------------
--  HashAggregate  (cost=4003.65..4055.20 rows=5155 width=43)
--    Group Key: ins.nomeins, i.id_facolta
--    ->  Hash Join  (cost=351.27..3977.87 rows=5155 width=43)
--          Hash Cond: (i.id_insegn = ins.id)
--          ->  Bitmap Heap Scan on inserogato i  (cost=63.47..3619.19 rows=5155 width=8)
--                Recheck Cond: ((annoaccademico)::text = '2013/2014'::text)
--                ->  Bitmap Index Scan on anno_index  (cost=0.00..62.18 rows=5155 width=0)
--                      Index Cond: ((annoaccademico)::text = '2013/2014'::text)
--          ->  Hash  (cost=185.69..185.69 rows=8169 width=43)
--                ->  Seq Scan on insegn ins  (cost=0.00..185.69 rows=8169 width=43)
-- (10 rows)


--- GUADAGNO DA 6406 A 4055
    -- Maggior guadaggno durante la condizione di annoaccademico, da 5970 a 3619