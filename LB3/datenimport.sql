LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_personen.csv'
INTO TABLE tbl_personen
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_land.csv'
INTO TABLE tbl_land
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_buchung.csv'
INTO TABLE tbl_buchung
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Buchungs_ID, Personen_FS, Land_FS, Ankunft, Abreise);


LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_leistung.csv' 
INTO TABLE tbl_leistung
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(LeistungID, Beschreibung);


LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_benutzer.csv'
INTO TABLE tbl_benutzer
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Benutzer_ID, Benutzername, PasswortHash, Vorname, Name, Benutzergruppe, erfasst, @deaktiviert, aktiv)
SET
  deaktiviert = NULLIF(@deaktiviert, '');



LOAD DATA LOCAL INFILE 'C:/Users/marzonev/Documents/Github/M141/LB3/Finale CSV/tbl_positionen.csv'
INTO TABLE tbl_positionen
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Positions_ID, Buchungs_FS, Konto, Anzahl, Preis, Rabatt, Benutzer_FS, erfasst, Leistung_Text, @Leistung_FS)
SET
  Leistung_FS = NULLIF(@Leistung_FS, '');


UPDATE tbl_benutzer
SET PasswortHash = SHA2(PasswortHash, 256);