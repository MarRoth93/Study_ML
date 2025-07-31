-- Tabelle erstellen
CREATE TABLE Freunde (
	Vorname VARCHAR(20),
	Nachname VARCHAR(20),
	Alter INTEGER 
	);
	
-- Daten in Tabelle Einfügen
INSERT INTO Freunde VALUES
('Marco', 'Rothermel', 30),
('Chris', 'Rothermel', 32),
('Florian', 'Fischer', 31);

SELECT * FROM Freunde;

-- Weitere Column Einfügen
ALTER TABLE Freunde 
ADD COLUMN Nickname VARCHAR(10);

-- Einzelne Felder updaten
UPDATE Freunde SET Nickname = 'Mag' WHERE Vorname = 'Marco';
UPDATE Freunde SET Nickname = 'Chris' WHERE Vorname = 'Chris';
UPDATE Freunde SET Nickname = 'Flo' WHERE Vorname = 'Florian';

-- Column Hinzufügen
ALTER TABLE Freunde 
ADD COLUMN TEST INTEGER; 

SELECT * FROM Freunde; 
CALL SYSPROC.ADMIN_CMD('REORG TABLE FREUNDE');


-- Column löschen
ALTER TABLE Freunde 
DROP COLUMN TEST;

-- Column namen ändern
ALTER TABLE Freunde
RENAME COLUMN NICKNAME TO NICK;

-- Datentyp Ändern
ALTER TABLE Freunde 
ALTER COLUMN NICK 
SET DATA TYPE VARCHAR(4000);

-- Daten Ändern
UPDATE Freunde SET VORNAME = 'Christoph' WHERE NICK = 'Chris'

-- Nue Column hinzufügen 
ALTER TABLE Freunde 
ADD COLUMN ID INTEGER

-- DATEN updaten
UPDATE Freunde SET ID = 1 WHERE NICK = 'Mag';
UPDATE Freunde SET ID = 2 WHERE NICK = 'Chris';
UPDATE Freunde SET ID = 3 WHERE NICK = 'Flo';

-- Zeile hinzufügen 
INSERT INTO Freunde VALUES
('Lisa', 'Toh', 31, 'Lizzy', 4);

SELECT * FROM Freunde

-- Zeile Löschen 
DELETE FROM Freunde WHERE ID = 4;

-- Zählen 
SELECT COUNT(*) FROM Freunde;
SELECT COUNT(ALTER) FROM Freunde WHERE ALTER = 30;
SELECT DISTINCT NACHNAME FROM Freunde;
SELECT COUNT(DISTINCT NACHNAME) FROM Freunde;
SELECT * FROM Freunde LIMIT 2;
SELECT * FROM Freunde LIMIT 2 OFFSET 1;