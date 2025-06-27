-- Modernisierter SQL Dump mit InnoDB und Foreign Keys

DROP DATABASE IF EXISTS backpacker_lb3;
CREATE DATABASE backpacker_lb3 CHARACTER SET utf8mb4 COLLATE=utf8mb4_unicode_ci;
USE backpacker_lb3;

-- Benutzer
CREATE TABLE tbl_benutzer (
  Benutzer_ID INT AUTO_INCREMENT PRIMARY KEY,
  Benutzername VARCHAR(20) NOT NULL,
  Password VARCHAR(255),
  Vorname VARCHAR(50),
  Name VARCHAR(50),
  Benutzergruppe TINYINT DEFAULT 1,
  erfasst TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deaktiviert DATE DEFAULT NULL,
  aktiv TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mitarbeiter';

-- Länder
CREATE TABLE tbl_land (
  Land_ID INT PRIMARY KEY,
  Land VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Ländercodes';

-- Personen
CREATE TABLE tbl_personen (
  Personen_ID INT AUTO_INCREMENT PRIMARY KEY,
  Titel VARCHAR(20),
  Vorname VARCHAR(50),
  Name VARCHAR(50),
  Strasse VARCHAR(100),
  PLZ VARCHAR(10),
  Ort VARCHAR(50),
  Anrede VARCHAR(20),
  Telefon VARCHAR(30),
  erfasst DATETIME DEFAULT CURRENT_TIMESTAMP,
  Sprache VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Gäste';

-- Buchungen
CREATE TABLE tbl_buchung (
  Buchungs_ID INT AUTO_INCREMENT PRIMARY KEY,
  Personen_FS INT,
  Ankunft DATETIME,
  Abreise DATETIME,
  Land_FS INT,
  FOREIGN KEY (Personen_FS) REFERENCES tbl_personen(Personen_ID) ON DELETE SET NULL,
  FOREIGN KEY (Land_FS) REFERENCES tbl_land(Land_ID) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Buchungszeilen';

-- Leistungen
CREATE TABLE tbl_leistung (
  LeistungID INT PRIMARY KEY,
  Beschreibung VARCHAR(70)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Leistungen';

-- Positionen
CREATE TABLE tbl_positionen (
  Positions_ID INT AUTO_INCREMENT PRIMARY KEY,
  Buchungs_FS INT DEFAULT NULL,
  Konto INT NOT NULL DEFAULT 0,
  Anzahl INT NOT NULL DEFAULT 0,
  Preis DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  Rabatt DECIMAL(4,2) NOT NULL DEFAULT 0.00,
  Benutzer_FS INT DEFAULT NULL,
  erfasst DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Leistung_Text TEXT,
  Leistung_FS INT DEFAULT NULL,
  FOREIGN KEY (Buchungs_FS) REFERENCES tbl_buchung(Buchungs_ID) ON DELETE SET NULL,
  FOREIGN KEY (Benutzer_FS) REFERENCES tbl_benutzer(Benutzer_ID) ON DELETE SET NULL,
  FOREIGN KEY (Leistung_FS) REFERENCES tbl_leistung(LeistungID) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Buchungspositionen';
