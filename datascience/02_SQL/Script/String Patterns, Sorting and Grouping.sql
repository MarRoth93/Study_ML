-- Wählt alle Daten aus der Tabelle EMPLOYEES aus
SELECT * FROM EMPLOYEES;

-- Wählt die Vornamen und Nachnamen der Mitarbeiter aus, die in Elgin, IL wohnen
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin, IL%';

-- Wählt alle Mitarbeiter aus, die in den 1970er Jahren geboren wurden
SELECT * FROM EMPLOYEES WHERE B_DATE LIKE '197%';

-- Wählt alle Mitarbeiter mit einem Gehalt zwischen 60.000 und 70.000 und einer Abteilungs-ID von 5 aus
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 60000 AND 70000 AND DEP_ID = 5;

-- Sortiert alle Mitarbeiter nach Abteilungs-ID in aufsteigender Reihenfolge
SELECT * FROM EMPLOYEES ORDER BY DEP_ID;

-- Sortiert alle Mitarbeiter nach Abteilungs-ID in absteigender Reihenfolge und dann nach Nachname in absteigender Reihenfolge
SELECT * FROM EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC;

-- Wählt alle Daten aus der Tabelle DEPARTMENTS aus
SELECT * FROM DEPARTMENTS;

-- Wählt alle Daten aus den Tabellen DEPARTMENTS und EMPLOYEES aus und sortiert nach Abteilungsname und Nachname in absteigender Reihenfolge
SELECT * FROM DEPARTMENTS, EMPLOYEES ORDER BY DEP_NAME, L_NAME DESC;

-- Wählt die Abteilungsnamen und die Vornamen und Nachnamen der Mitarbeiter aus und sortiert nach Abteilungsname und Nachname in absteigender Reihenfolge
SELECT D.DEP_NAME, E.F_NAME, E.L_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

-- Zählt die Anzahl der Mitarbeiter pro Abteilungs-ID
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- Wählt alle Daten aus der Tabelle EMPLOYEES aus
SELECT * FROM EMPLOYEES;

-- Zählt die Anzahl der Mitarbeiter nach Geschlecht
SELECT SEX, COUNT(*)
FROM EMPLOYEES
GROUP BY SEX;

-- Zählt die Anzahl der Mitarbeiter und berechnet das durchschnittliche Gehalt pro Abteilungs-ID
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- Zählt die Anzahl der Mitarbeiter pro Manager-ID
SELECT MANAGER_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY MANAGER_ID;

-- Zählt die Anzahl der Mitarbeiter und berechnet das durchschnittliche Gehalt pro Abteilungs-ID und sortiert nach durchschnittlichem Gehalt in absteigender Reihenfolge
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY DESC;

-- Zählt die Anzahl der Mitarbeiter und berechnet das durchschnittliche Gehalt pro Abteilungs-ID für Abteilungen mit weniger als 4 Mitarbeitern und sortiert nach durchschnittlichem Gehalt in absteigender Reihenfolge
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*) < 4
ORDER BY AVG_SALARY DESC;
