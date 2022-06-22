use master
go
drop database if exists Fussballspieler
go
create database Fussballspieler
go
use Fussballspieler
go

CREATE TABLE Spieler(
    id INT   identity PRIMARY KEY,
    Vorname VARCHAR(255) ,
    Nachname VARCHAR(255) ,
    Geburtsdatum DATE ,
    Position VARCHAR(255) ,
    Nationalität VARCHAR(255) 
);
CREATE TABLE "Fifa Ranking"(
    id INT   identity PRIMARY KEY,
    "Fifa Version" VARCHAR(255) ,
    "Gesamt Rating" INT ,
    "Pace Rating" INT ,
    "Shoot Rating" INT ,
    "Pasing Rating" INT ,
    "Dribbling Rating" INT ,
    "Defensive Rating" INT ,
    "Physis Rating" INT ,
    fk_SpielerID INT 
);
CREATE TABLE Mannschaft(
    id INT   identity PRIMARY KEY,
    Klubname VARCHAR(255) ,
    Klubkürzel VARCHAR(255) ,
    Sponsor VARCHAR(255) ,
    fk_CoachID INT 
);
CREATE TABLE Coach(
    id INT   identity PRIMARY KEY,
    Vorname VARCHAR(255) ,
    Nachname VARCHAR(255) 
);
CREATE TABLE spielt(
    id INT   identity PRIMARY KEY,
    von DATE ,
    bis DATE ,
    gesperrt BIT ,
    Lohn FLOAT ,
    fk_SpielerID INT ,
    fk_MannschaftID INT 
);
ALTER TABLE
    "Fifa Ranking" ADD CONSTRAINT fifa_ranking_fk_spielerid_foreign FOREIGN KEY(fk_SpielerID) REFERENCES Spieler(id);
ALTER TABLE
    spielt ADD CONSTRAINT spielt_fk_spielerid_foreign FOREIGN KEY(fk_SpielerID) REFERENCES Spieler(id);
ALTER TABLE
    Mannschaft ADD CONSTRAINT mannschaft_fk_coachid_foreign FOREIGN KEY(fk_CoachID) REFERENCES Coach(id);
ALTER TABLE
    spielt ADD CONSTRAINT spielt_fk_mannschaftid_foreign FOREIGN KEY(fk_MannschaftID) REFERENCES Mannschaft(id);
GO