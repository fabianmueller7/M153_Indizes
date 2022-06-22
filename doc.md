# Arbeitsauftrag Indizes (Fabian & Jan)

## Was ist ein Index?

Ein Index beschleuinigt das Suchen und Sortieren nach bestimmten Felder in einer Datenbank.
Dieser besteht aus einer Ansammlung von Zeigern, welche eine sogenannte Ordnungsrelation definiert (vergleich von Elementen in einer Menge).

**Wie eine normale Abfrage funktionieren würde:**
Wir führen eine normale SELECT Abfrage durch:
```sql
select * from autos where marke = 'BMW'
```
Im Hintergrund wird nun jeder einzelner Eintrag verglichen, ob dieser die entsprechende Marke hat.

**Wie die Abfrage mit Index funktioniert:**
Nun fügen wir einen Index hinzu (Code siehe bei der nächsten Frage). Im Hintergrund wird eine Art "Zuordnungs-Tabelle" erstellt. Die Marken wurden sortiert und die Eintragsposition in der Haupttabelle notiert. 

Erkennt die Datenbank jetzt, dass in der WHERE Bedingung nur die Spalte `marke` verwendet wird, wird er das Herraussuchen der Datensätze über diese Tabelle erledigen. Es wird also vor jedem Herraussuchen von der Datenbank abgewogen, welcher Index nun am besten passt und somit am schnellsten ausgeführt wird.

**Beispiel:**
Die Suche in einem Datenbankindex entspricht am ehesten der Suche in einem gedruckten Telefonbuch. Das Grundkonzept ist, dass die Einträge in einer wohldefinierten Reihenfolge vorliegen. Wenn die Daten sortiert sind, kann man einzelne Einträge schnell finden, da sich die Position des Eintrags aus der Sortierreihenfolge ergibt.

## Wie wird ein Index erstellt, gelöscht usw.?

```sql
select * from Codehier
```

## Wie kann ein Index beurteilt werden?

## Was bringt ein Index bei vielen Datensätzen?

## Was bringt ein Index bei vielen Tabellen bzw. Beziehungen zwischen den Tabellen?