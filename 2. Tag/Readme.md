# 2. Tag

## Auffrischen der SQL-Befehle aus M106(ÜK)/M164

| **Tätigkeit**                        | **SQL-Befehl**                                      | **Grp** | **🛑** |
| ------------------------------------ | --------------------------------------------------- | ------- | ------ |
| 1) alle Daten einer Tabelle anzeigen | `SELECT * FROM tabellenname;`                       | DML     |        |
| 2) Datenbank auswählen               | `USE datenbankname;`                                | DCL     |        |
| 3) eine neue Datenbank erstellen     | `CREATE DATABASE datenbankname;`                    | DDL     |        |
| 4) eine neue Tabelle erstellen       | `CREATE TABLE tabellenname (...);`                  | DDL     |        |
| 5) eine Tabelle löschen              | `DROP TABLE tabellenname;`                          | DDL     | ❌      |
| 6) Tabellenstruktur kontrollieren    | `DESCRIBE tabellenname;`                            | DDL     |        |
| 7) Datenbanken anzeigen              | `SHOW DATABASES;`                                   | DCL     |        |
| 8) Tabellen einer DB anzeigen        | `SHOW TABLES;`                                      | DCL     |        |
| 9) Daten in eine Tabelle eintragen   | `INSERT INTO tabellenname (...) VALUES (...);`      | DML     |        |
| 10) Daten in einer Tabelle ändern    | `UPDATE tabellenname SET spalte = wert WHERE ...;`  | DML     | ❌      |
| 11) Daten in einer Tabelle löschen   | `DELETE FROM tabellenname WHERE ...;`               | DML     | ❌      |
| 12) Spalte in einer Tabelle löschen  | `ALTER TABLE tabellenname DROP COLUMN spaltenname;` | DDL     | ❌      |

## Die Optionsdateien my.ini (oder my.cnf)

### Legen Sie dazu eine Kopie/Screenshot (die ca. ersten 25 Zeilen sind interessant) des angezeigten Startprozesses (verbose) für mysql.exe und mysqld.exe in ihr Lernportfolio.

Die Datei ist [hier](verbosestart.txt).

**die ersten 25 Zeilen**

``` log
mysqld  Ver 11.4.5-MariaDB for Win64 on AMD64 (mariadb.org binary distribution)
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Starts the MariaDB database server.

Usage: mysqld [OPTIONS]
NT and Win32 specific options:
  --install                     Install the default service (NT).
  --install-manual              Install the default service started manually (NT).
  --install service_name        Install an optional service (NT).
  --install-manual service_name Install an optional service started manually (NT).
  --remove                      Remove the default service from the service list (NT).
  --remove service_name         Remove the service_name from the service list (NT).
  --enable-named-pipe           Only to be used for the default server (NT).
  --standalone                  Dummy option to start as a standalone server (NT).


Default options are read from the following files in the given order:
C:\WINDOWS\my.ini C:\WINDOWS\my.cnf C:\my.ini C:\my.cnf C:\Program Files\MariaDB 11.4\my.ini C:\Program Files\MariaDB 11.4\my.cnf C:\Program Files\MariaDB 11.4\data\my.ini C:\Program Files\MariaDB 11.4\data\my.cnf
The following groups are read: mysqld server mysqld-11.4 mariadb mariadb-11.4 mariadbd mariadbd-11.4 client-server
The following options may be given as the first argument:
--print-defaults          Print the program argument list and exit.
--no-defaults             Don't read default options from any option file.
The following specify which files/extra groups are read (specified before remaining options):
--defaults-file=#         Only read default options from the given file #.
```

