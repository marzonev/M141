USE backpacker_lb3;
SHOW TABLES;

-- Personen-Datensätze zählen
SELECT COUNT(*) AS personen FROM tbl_personen;

-- Buchungen-Datensätze zählen
SELECT COUNT(*) AS buchungen FROM tbl_buchung;

-- Positionen-Datensätze zählen
SELECT COUNT(*) AS positionen FROM tbl_positionen;

-- Eine Person mit ID 1 anzeigen
SELECT * FROM tbl_personen WHERE Personen_ID = 1;

-- Eine Buchung mit ID 1001 anzeigen
SELECT * FROM tbl_buchung WHERE Buchungs_ID = 1001;

-- Eine Position mit ID 500 anzeigen
SELECT * FROM tbl_positionen WHERE Positions_ID = 2500;

SELECT * FROM tbl_positionen LIMIT 10;

-- Verknüpfung von Personen und Buchungen prüfen
SELECT 
    p.Vorname, 
    p.Name, 
    b.Ankunft, 
    b.Abreise
FROM tbl_personen p
JOIN tbl_buchung b ON p.Personen_ID = b.Personen_FS
LIMIT 5;

-- Benutzer ohne Wert bei 'deaktiviert'
SELECT * FROM tbl_benutzer WHERE deaktiviert IS NULL;

-- Positionen ohne zugewiesene Leistung
SELECT * FROM tbl_positionen WHERE Leistung_FS IS NULL;