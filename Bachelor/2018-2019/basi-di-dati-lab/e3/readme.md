# Esercitazione 2

- [Es1](#esercizio-1) :white_check_mark:
- [Es2](#esercizio-2) :x:
- [Es3](#esercizio-3) :white_check_mark:
- [Es4](#esercizio-4) :white_check_mark:
- [Es5](#esercizio-5) :white_check_mark:
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

```sql
SELECT P.id, P.nome, P.cognome
FROM persona AS P
WHERE P.id IN (
    SELECT D.id_persona
        FROM docenza AS D JOIN inserogato AS INSE ON INSE.id = D.id_inserogato
        WHERE INSE.annoaccademico = '2010/2011'
        GROUP BY(D.id_persona)
        HAVING COUNT(DISTINCT INSE.id_corsostudi) >=2
)
ORDER BY (P.id)
OFFSET 49
LIMIT 5;
```

### Esercizio 3
```sql
SELECT DISTINCT P.id, P.nome, P.cognome
FROM persona AS P
  JOIN docenza    AS D    ON D.id_persona = P.id
  JOIN inserogato AS INSE ON INSE.id = D.id_inserogato
  JOIN insegn     AS I    ON I.id = INSE.id_insegn
WHERE
  INSE.annoaccademico = '2010/2011'
  AND D.id_persona NOT IN(
    SELECT D1.id_persona
    FROM docenza AS D1
      JOIN inserogato AS INSE1 ON INSE1.ID = D1.id_inserogato
      JOIN insegn     AS I1    ON I1.id = INSE1.id_insegn
    --WHERE D1.id_persona = D.id_persona
    where I.nomeins = I1.nomeins
    AND INSE1.annoaccademico = '2009/2010'
    )
ORDER BY P.id
LIMIT 5 OFFSET 19;
```

### Esercizio 4

```sql
SELECT  PL.abbreviazione, PD.discriminante, PD.inizio, PD.fine, COUNT(*)
FROM periodolez     AS PL
  JOIN periododid   AS PD   ON PL.id = PD.id
  JOIN insinperiodo i ON PL.id = i.id_periodolez
  join inserogato i2 ON i.id_inserogato = i2.id
WHERE (PD.descrizione LIKE 'I semestre%' or
      pd.descrizione LIKE 'Primo semestre%')
  and pd.annoaccademico = '2010/2011'
GROUP BY (PL.abbreviazione, PD.discriminante, PD.inizio, PD.fine)
ORDER BY PD.inizio, PD.fine
```

### Esercizio 5

```sql
SELECT F.nome, COUNT(INSE.ID) AS "N UNITA LOGISTICHE", SUM(INSE.crediti) AS "N CREDITI EROGATI"
FROM facolta AS F
  JOIN inserogato INSE ON F.id = INSE.id_facolta
WHERE INSE.modulo < '0'
    AND INSE.annoaccademico = '2010/2011'
GROUP BY (F.nome)
```