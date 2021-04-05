/* generate random samples of vorname, nachname and birthday */
WITH randomnumbers AS(
SELECT
FLOOR(random()*2000) + 1:: integer AS rv,
FLOOR(random()*1000) + 1:: integer AS rn,
FLOOR(random()*22320) + 1:: integer AS rd
FROM generate_series(1,10000000)
)

INSERT INTO personen (vorname, nachname, geburtstag)
SELECT
vorname.vname,
nachname.nname,
dates.ds
FROM randomnumbers ran inner join vorname ON ran.rv = vorname.id
INNER JOIN nachname ON ran.rn = nachname.id
INNER JOIN dates ON ran.rd = dates.id;


