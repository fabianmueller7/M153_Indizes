use Fussballspieler

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Cristiano', 'Ronaldo', '1985-02-05','Angriff', 'Portugal');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Paul', 'Pogba', '1993-03-15','Mittelfeld', 'Frankreich');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Harry', 'Maguire', '1993-03-05','Verteidigung', 'England');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Bruno', 'Fernandes', '1994-09-08','Mittelfeld', 'Portugal');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Raphael', 'Varane', '1993-04-25','Verteidigung', 'Frankreich');




INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Mohamed', 'Salah', '1992-06-15','Angriff', 'Aegypten');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Virgil', 'Van Dijk', '1991-07-08','Verteidigung', 'Niederlande');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Thiago', 'Alcantara', '1991-04-11','Mittelfeld', 'Brasilien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Trend', 'Alexander-Arnold', '1998-10-07','Verteidigung', 'England');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Jordan', 'Henderson', '1990-06-17','Mittelfeld', 'England');




INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Karim', 'Benzema', '1987-12-19','Angriff', 'Frankreich');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Vinicius', 'Junior', '2000-07-12','Angriff', 'Brasilien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Luka', 'Modric', '1985-09-09','Mittelfeld', 'Kroatien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('David', 'Alaba', '1992-06-24','Verteidigung', 'Oestereich');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Eder', 'Militao', '1998-01-18','Verteidigung', 'Brasilien');




INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Lionel', 'Messi', '1987-06-24','Angriff', 'Argentinien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Kylian', 'Mbappe', '1998-12-20','Angriff', 'Frankreich');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Neymar', 'Junior', '1992-02-05','Angriff', 'Brasilien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Marco', 'Verratti', '1992-11-05','Mittelfeld', 'Italien');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Sergio', 'Ramos', '1986-03-30','Verteidigung', 'Spanien');




INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Robert', 'Lewandowski', '1988-08-21','Angriff', 'Polen');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Serge', 'Gnabry', '1995-07-14','Mittelfeld', 'Deutschland');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Alphonso', 'Davies', '2000-11-02','Verteidigung', 'Kanada');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Niklas', 'Suele', '1995-09-03','Verteidigung', 'Deutschland');

INSERT INTO Spieler (Vorname, Nachname, Geburtsdatum , Position, Nationalität)
VALUES ('Jamal', 'Musiala', '2003-02-26','Mittelfeld', 'Deutschland');





INSERT INTO Coach(Vorname, Nachname)
VALUES ('Erik', 'ten Hag');

INSERT INTO Coach(Vorname, Nachname)
VALUES ('Juergen', 'Klopp');

INSERT INTO Coach(Vorname, Nachname)
VALUES ('Carlo', 'Ancelotti');

INSERT INTO Coach(Vorname, Nachname)
VALUES ('Mauricio', 'Pochettino');

INSERT INTO Coach(Vorname, Nachname)
VALUES ('Julian', 'Nagelsmann');


INSERT INTO Mannschaft (Klubname, Klubkürzel, Sponsor, fk_CoachID)
VALUES ('Manchester United', 'MUN', 'TeamViewer',  (Select id from Coach where Vorname = 'Erik'));

INSERT INTO Mannschaft (Klubname, Klubkürzel, Sponsor, fk_CoachID)
VALUES ('FC Liverpool', 'LIV', 'Standard Chartered',  (Select id from Coach where Vorname = 'Juergen'));

INSERT INTO Mannschaft (Klubname, Klubkürzel, Sponsor, fk_CoachID)
VALUES ('Real Madrid', 'RMA', 'Emirates',  (Select id from Coach where Vorname = 'Carlo'));

INSERT INTO Mannschaft (Klubname, Klubkürzel, Sponsor, fk_CoachID)
VALUES ('Paris Saint-Germain', 'PAR', 'GOAT',  (Select id from Coach where Vorname = 'Mauricio'));

INSERT INTO Mannschaft (Klubname, Klubkürzel, Sponsor, fk_CoachID)
VALUES ('FC Bayern Munich', 'BAY', 'Telekom',  (Select id from Coach where Vorname = 'Julian'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '91', '87' , '93', '82', '88', '34', '75',  (Select id from Spieler where Vorname = 'Cristiano'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '87', '71' , '81', '86', '86', '65', '83',  (Select id from Spieler where Vorname = 'Paul'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '84', '50' , '55', '69', '70', '85', '87',  (Select id from Spieler where Vorname = 'Harry'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '88', '75' , '86', '89', '84', '70', '77',  (Select id from Spieler where Vorname = 'Bruno'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '86', '82' , '49', '64', '65', '87', '82',  (Select id from Spieler where Vorname = 'Raphael'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '89', '90' , '87', '81', '90', '45', '75',  (Select id from Spieler where Vorname = 'Mohamed'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '89', '78' , '60', '71', '72', '91', '84',  (Select id from Spieler where Vorname = 'Virgil'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '86', '63' , '72', '86', '90', '70', '66',  (Select id from Spieler where Vorname = 'Thiago'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '87', '79' , '68', '88', '80', '80', '72',  (Select id from Spieler where Vorname = 'Trend'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '84', '66' , '74', '83', '79', '78', '81',  (Select id from Spieler where Vorname = 'Jordan'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '89', '76' , '86', '81', '87', '39', '77',  (Select id from Spieler where Vorname = 'Karim'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '80', '95' , '70', '71', '87', '29', '66',  (Select id from Spieler where Vorname = 'Vinicius'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '87', '73' , '76', '89', '88', '72', '66',  (Select id from Spieler where Vorname = 'Luka'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '84', '77' , '70', '81', '80', '83', '76',  (Select id from Spieler where Vorname = 'David'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '82', '83' , '50', '69', '71', '83', '82',  (Select id from Spieler where Vorname = 'Eder'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '93', '85' , '92', '91', '95', '34', '68',  (Select id from Spieler where Vorname = 'Lionel'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '90', '96' , '86', '78', '91', '39', '76',  (Select id from Spieler where Vorname = 'Kylian'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '91', '91' , '83', '86', '94', '37', '63',  (Select id from Spieler where Vorname = 'Neymar'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '87', '64' , '61', '87', '91', '79', '67',  (Select id from Spieler where Vorname = 'Marco'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '88', '70' , '70', '76', '74', '88', '84',  (Select id from Spieler where Vorname = 'Sergio'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '92', '78' , '92', '79', '86', '44', '82',  (Select id from Spieler where Vorname = 'Robert'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '85', '83' , '84', '79', '86', '43', '69',  (Select id from Spieler where Vorname = 'Serge'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '82', '96' , '67', '71', '82', '75' , '75',  (Select id from Spieler where Vorname = 'Alphonso'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '82', '65' , '42', '59', '51', '83' , '81',  (Select id from Spieler where Vorname = 'Niklas'));


INSERT INTO [Fifa Ranking] ("Fifa Version", "Gesamt Rating", "Pace Rating", "Shoot Rating", "Pasing Rating", "Dribbling Rating", "Defensive Rating", "Physis Rating", "fk_SpielerID")
Values ('Fifa 22', '75', '76' , '70', '67', '84', '31', '49',  (Select id from Spieler where Vorname = 'Jamal'));



INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2021-08-31', '2023-06-30', 'FALSE', '17400000', (Select id from Spieler where Vorname = 'Cristiano'), (Select id from Mannschaft where Klubname = 'Manchester United'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2016-08-09', '2022-06-30', 'FALSE', '9900000', (Select id from Spieler where Vorname = 'Paul'), (Select id from Mannschaft where Klubname = 'Manchester United'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2019-08-05', '2025-06-30', 'FALSE', '11500000', (Select id from Spieler where Vorname = 'Harry'), (Select id from Mannschaft where Klubname = 'Manchester United'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2020-01-29', '2026-06-30', 'FALSE', '8200000', (Select id from Spieler where Vorname = 'Bruno'), (Select id from Mannschaft where Klubname = 'Manchester United'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2021-08-14', '2025-06-30', 'FALSE', '11600000', (Select id from Spieler where Vorname = 'Raphael'), (Select id from Mannschaft where Klubname = 'Manchester United'));


INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2017-07-01', '2023-06-30', 'FALSE', '12100000', (Select id from Spieler where Vorname = 'Mohamed'), (Select id from Mannschaft where Klubname = 'FC Liverpool'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2018-01-01', '2025-06-30', 'FALSE', '10100000', (Select id from Spieler where Vorname = 'Virgil'), (Select id from Mannschaft where Klubname = 'FC Liverpool'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2020-09-18', '2024-06-30', 'FALSE', '11500000', (Select id from Spieler where Vorname = 'Thiago'), (Select id from Mannschaft where Klubname = 'FC Liverpool'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2016-07-01', '2025-06-30', 'FALSE', '11200000', (Select id from Spieler where Vorname = 'Trend'), (Select id from Mannschaft where Klubname = 'FC Liverpool'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2011-07-01', '2025-06-30', 'FALSE', '7300000', (Select id from Spieler where Vorname = 'Jordan'), (Select id from Mannschaft where Klubname = 'FC Liverpool'));


INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2009-07-09', '2023-06-30', 'FALSE', '13200000', (Select id from Spieler where Vorname = 'Karim'), (Select id from Mannschaft where Klubname = 'Real Madrid'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2018-07-12', '2024-06-30', 'FALSE', '3200000', (Select id from Spieler where Vorname = 'Vinicius'), (Select id from Mannschaft where Klubname = 'Real Madrid'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2012-08-27', '2022-06-30', 'FALSE', '11000000', (Select id from Spieler where Vorname = 'Luka'), (Select id from Mannschaft where Klubname = 'Real Madrid'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2021-07-01', '2026-06-30', 'FALSE', '11000000', (Select id from Spieler where Vorname = 'David'), (Select id from Mannschaft where Klubname = 'Real Madrid'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2019-07-01', '2025-06-30', 'FALSE', '4500000', (Select id from Spieler where Vorname = 'Eder'), (Select id from Mannschaft where Klubname = 'Real Madrid'));


INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2021-08-10', '2023-06-30', 'FALSE', '31200000', (Select id from Spieler where Vorname = 'Lionel'), (Select id from Mannschaft where Klubname = 'Paris Saint-Germain'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2018-07-01', '2025-06-30', 'FALSE', '50000000', (Select id from Spieler where Vorname = 'Kylian'), (Select id from Mannschaft where Klubname = 'Paris Saint-Germain'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2017-08-03', '2025-06-30', 'FALSE', '37700000', (Select id from Spieler where Vorname = 'Neymar'), (Select id from Mannschaft where Klubname = 'Paris Saint-Germain'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2012-07-18', '2024-06-30', 'FALSE', '11100000', (Select id from Spieler where Vorname = 'Marco'), (Select id from Mannschaft where Klubname = 'Paris Saint-Germain'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2021-07-08', '2023-06-30', 'FALSE', '7300000', (Select id from Spieler where Vorname = 'Sergio'), (Select id from Mannschaft where Klubname = 'Paris Saint-Germain'));


INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2014-07-01', '2023-06-30', 'FALSE', '12600000', (Select id from Spieler where Vorname = 'Robert'), (Select id from Mannschaft where Klubname = 'FC Bayern Munich'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2017-07-01', '2023-06-30', 'FALSE', '7000000', (Select id from Spieler where Vorname = 'Serge'), (Select id from Mannschaft where Klubname = 'FC Bayern Munich'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2019-01-01', '2025-06-30', 'FALSE', '6200000', (Select id from Spieler where Vorname = 'Alphonso'), (Select id from Mannschaft where Klubname = 'FC Bayern Munich'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2017-07-01', '2022-06-30', 'FALSE', '300000', (Select id from Spieler where Vorname = 'Niklas'), (Select id from Mannschaft where Klubname = 'FC Bayern Munich'));

INSERT INTO spielt (von, bis, gesperrt, Lohn, fk_SpielerID, fk_MannschaftID)
Values ('2020-07-01', '2026-06-30', 'FALSE', '240000', (Select id from Spieler where Vorname = 'Jamal'), (Select id from Mannschaft where Klubname = 'FC Bayern Munich'));
