-- ESERCIZIO 3

-- ELIMINO GLI INDICI
DROP INDEX abb_index;

-- CREO GLI INDICI
CREATE INDEX abb_index ON corsostudi(abbreviazione VARCHAR_PATTERN_OPS);

-- ESEGUO ANALYZE
ANALYZE corsostudi;

-- EXPLAIN QUERY
EXPLAIN SELECT CS.codice, CS.nome, CS.abbreviazione
FROM corsostudi AS CS
WHERE cs.abbreviazione ILIKE '%lingue%'

-- **** PRIMA ****
--                           QUERY PLAN
-- ---------------------------------------------------------------
--  Seq Scan on corsostudi cs  (cost=0.00..96.94 rows=1 width=98)
--    Filter: ((abbreviazione)::text ~~* '%lingue%'::text)
-- (2 rows)

-- ******************************************************************************************

-- **** DOPO ****
-- 
-- Non cambia niente, nessuna ottimizzazione.