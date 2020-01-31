-- ESERCIZIO 4

-- ELIMINO GLI INDICI
DROP INDEX idf_index;
DROP INDEX acc_index;
DROP INDEX mod_index;

-- CREO GLI INDICI
CREATE INDEX acc_index ON inserogato(annoaccademico VARCHAR_PATTERN_OPS);
CREATE INDEX idf_index ON inserogato(id_facolta);
CREATE INDEX mod_index ON inserogato(modulo);

-- ESEGUO ANALYZE
ANALYZE inserogato;

-- EXPLAIN QUERY
EXPLAIN SELECT INSE.id_insegn, INSE.modulo
FROM inserogato AS INSE
WHERE INSE.modulo > 0
  AND INSE.annoaccademico = '2010/2011'
  AND INSE.id_facolta = 7;

-- **** PRIMA ****
--                                                 QUERY PLAN
-- -----------------------------------------------------------------------------------------------------------
--  Seq Scan on inserogato inse  (cost=0.00..6310.30 rows=861 width=7)
--    Filter: ((modulo > '0'::numeric) AND ((annoaccademico)::text = '2010/2011'::text) AND (id_facolta = 7))
-- (2 rows)

-- ******************************************************************************************

-- **** DOPO ****
                                                   QUERY PLAN
-----------------------------------------------------------------------------------------------------------------
--  Bitmap Heap Scan on inserogato inse  (cost=602.53..1460.77 rows=861 width=7)
--    Recheck Cond: (((annoaccademico)::text = '2010/2011'::text) AND (modulo > '0'::numeric) AND (id_facolta = 7))
--    ->  BitmapAnd  (cost=602.53..602.53 rows=861 width=0)
--          ->  Bitmap Index Scan on acc_index  (cost=0.00..84.53 rows=7108 width=0)
--                Index Cond: ((annoaccademico)::text = '2010/2011'::text)
--          ->  Bitmap Index Scan on mod_index  (cost=0.00..193.99 rows=18347 width=0)
--                Index Cond: (modulo > '0'::numeric)
--          ->  Bitmap Index Scan on idf_index  (cost=0.00..322.87 rows=30543 width=0)
--                Index Cond: (id_facolta = 7)
-- (9 rows)

-- Miglioro da 6310 a 1460