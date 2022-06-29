

3)
Indizes ermöglichen einen Zugriff auf Daten in einer umfangreichen Datensammlung.
Die Datenbank muss somit nur nach Indizes suchen, welche oft chronologiesch angeordnet sind.
Sonst müsste die Datenbank den kompletten Datensatz abgleichen.
DECLARE @t1 DATETIME;
DECLARE @t2 DATETIME;
DECLARE @t3 INT;

SET @t1 = GETDATE();
SELECT * From Spieler
SET @t2 = GETDATE();
SET @t3 = DATEDIFF(millisecond,@t1,@t2);
Select @t3