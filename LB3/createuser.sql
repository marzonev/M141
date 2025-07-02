-- Role: Benutzer

CREATE ROLE 'Benutzer';

GRANT SELECT, UPDATE ON backpacker_lb3.tbl_personen TO 'Benutzer';

GRANT
SELECT (deaktiviert, Benutzername, Vorname, Name, Benutzergruppe, aktiv, erfasst),
INSERT (Benutzername, Vorname, Name, Benutzergruppe, aktiv, erfasst),
UPDATE (Benutzername, Vorname, Name, Benutzergruppe, aktiv, erfasst)
ON backpacker_lb3.tbl_benutzer TO 'Benutzer';

GRANT SELECT, INSERT, UPDATE ON backpacker_lb3.tbl_buchung TO 'Benutzer';
GRANT SELECT, INSERT, UPDATE ON backpacker_lb3.tbl_positionen TO 'Benutzer';

GRANT SELECT ON backpacker_lb3.tbl_land TO 'Benutzer';
GRANT SELECT ON backpacker_lb3.tbl_leistung TO 'Benutzer';

-- Role: Management

CREATE ROLE 'Management';
 
GRANT SELECT ON backpacker_lb3.tbl_positionen TO 'Management';
GRANT SELECT ON backpacker_lb3.tbl_buchung TO 'Management';
 
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_personen TO 'Management';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_land TO 'Management';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_leistung TO 'Management';
GRANT SELECT, INSERT, UPDATE, DELETE ON backpacker_lb3.tbl_benutzer TO 'Management';

-- Benutzer erstellen
CREATE USER 'Gabriel'@'%' IDENTIFIED BY 'Gabriel';
CREATE USER 'Nevio'@'%' IDENTIFIED BY 'Nevio';

-- Rolle zuweisen
GRANT USAGE ON backpacker_lb3.* TO 'Gabriel'@'%';
GRANT USAGE ON backpacker_lb3.* TO 'Nevio'@'%';
GRANT Benutzer TO 'Gabriel'@'%';
GRANT Management TO 'Nevio'@'%';