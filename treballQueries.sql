
/* Extraure informacio de la Base de Dades */
SELECT * FROM INFORMATION_SCHEMA.TABLES

/* Extraure la informacio de les columnes d'una taula */
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'poblacio_cat_edat_sexe'

/* Extraure la informacio de les columnes QUE TU VOLS 
d'una taula */
SELECT
  COLUMN_NAME, 
  IS_NULLABLE,
  COLUMN_TYPE,
  COLUMN_KEY,
  EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'poblacio_cat_edat_sexe';

/*****************************************************************************/



/*  ESTADISTIQUES */

/* mostra tots els registre de la taula amb les files limitades a 10*/
SELECT * FROM `poblacio_cat_edat_sexe` LIMIT 10;


/* Pobles que hi han a cada provincia */
/*
Aparentment el query funciona... el resultat quadra amb
https://es.wikipedia.org/wiki/Anexo:Municipios_de_la_provincia_de_L%C3%A9rida
https://es.wikipedia.org/wiki/Anexo:Municipios_de_la_provincia_de_Barcelona
*/
/* Lleida */
SELECT COUNT(*)
FROM poblacio_cat_edat_sexe
WHERE  (any = 2020) AND (codi_poblacio > '250000') AND (codi_poblacio <'260000');
/* bcn */
SELECT  COUNT(*)
FROM poblacio_cat_edat_sexe
WHERE (any = 2020) AND (codi_poblacio > '080000') AND (codi_poblacio <'090000');



