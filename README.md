# M141

## Wichtigse Mysql Befehl

### SQL

**Structured Query Language** ist die standardisierte Sprache zur Kommunikation mit relationalen Datenbanken.

---

### DDL – Data Definition Language

Dient zur Definition und Strukturierung von Datenbankobjekten.

**Typische Befehle:**

* `CREATE` – Neues Datenbankobjekt erstellen
* `ALTER` – Struktur eines Objekts ändern
* `RENAME` – Objekt umbenennen
* `DROP` – Objekt löschen

**Beispiel:**

```sql
CREATE TABLE Kunden (ID INT, Name VARCHAR(100));
ALTER TABLE Kunden ADD Email VARCHAR(255);
RENAME TABLE Kunden TO Klienten;
DROP TABLE Klienten;
```

---

### DML – Data Manipulation Language

Dient zur Bearbeitung der Daten innerhalb der Tabellen.

**Typische Befehle:**

* `INSERT` – Neue Daten einfügen
* `UPDATE` – Bestehende Daten ändern
* `DELETE` – Daten löschen
* `TRUNCATE` – Alle Daten in einer Tabelle löschen (ohne Protokollierung)

**Beispiel:**

```sql
INSERT INTO Kunden (ID, Name) VALUES (1, 'Anna');
UPDATE Kunden SET Name = 'Lisa' WHERE ID = 1;
DELETE FROM Kunden WHERE ID = 1;
TRUNCATE TABLE Kunden;
```

---

### DQL / DRL – Data Query / Retrieval Language

Dient zur Abfrage von Daten.

**Typische Befehle:**

* `SELECT` – Daten abfragen
* `SHOW` – Informationen über Datenbankobjekte anzeigen
* `DESCRIBE` – Struktur einer Tabelle anzeigen

**Beispiel:**

```sql
SELECT * FROM Kunden;
SHOW TABLES;
DESCRIBE Kunden;
```

---

### DCL – Data Control Language

Dient zur Verwaltung von Zugriffsrechten in der Datenbank.

**Typische Befehle:**

* `GRANT` – Rechte vergeben
* `REVOKE` – Rechte entziehen

**Beispiel:**

```sql
GRANT SELECT ON Kunden TO Benutzer1;
REVOKE SELECT ON Kunden FROM Benutzer1;
```

---

### TCL – Transaction Control Language

Dient zur Steuerung und Verwaltung von Transaktionen.

**Typische Befehle:**

* `BEGIN` / `START TRANSACTION` – Transaktion starten
* `COMMIT` – Änderungen dauerhaft speichern
* `ROLLBACK` – Änderungen zurücknehmen

**Beispiel:**

```sql
BEGIN;
UPDATE Konto SET Guthaben = Guthaben - 100 WHERE ID = 1;
COMMIT;
-- oder
ROLLBACK;
```
