--Item(Name, Seltenheit, Typ, Preis)
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
VALUES ('Trinity Force', 'Legendär', 3333);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
Values ('Sundered Sky', 'Legendär', 3100);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
Values ('Heartsteel', 'Legendär', 3000);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
Values ('Locket of the Iron Solari', 'Legendär', 2200);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
Values ('Ludens Companion', 'Legendär', 2850);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
Values ('Zeal', 'Episch', 1200);
INSERT INTO ITEM(NAME, SELTENHEIT, PREIS)
VALUES ('Amplifying Tome', 'Basis', 400);

--Effekt(Effekt_ID, Schaden, Verteidigung, Item_Name)
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (6473, 36, 0, 'Trinity Force');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (3938, 40, 0, 'Sundered Sky');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (4938, 0, 900, 'Heartsteel');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (5916, 0, 200, 'Locket of the Iron Solari');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (2315, 100, 0, 'Ludens Companion');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (7392, 15, 0, 'Zeal');
INSERT INTO EFFEKT(EFFEKT_ID, SCHADEN, VERTEIDIGUNG, Item_Name)
VALUES (9891, 40, 0, 'Amplifying Tome');

--SpielModus(Spiel_ID, Gewinner, Dauer)
INSERT INTO SPIELMODUS(SPIEL_ID, GEWINNER, DAUER)
VALUES (4565, 'Rot', 1571);
INSERT INTO SPIELMODUS(SPIEL_ID, GEWINNER, DAUER)
VALUES (4572, 'Blau', 1793);
INSERT INTO SPIELMODUS(SPIEL_ID, GEWINNER, DAUER)
VALUES (4579, 'Lila', 927);


--Klassich(Spiel_ID, Turmanzahl, Bosskills)
INSERT INTO KLASSISCH(SPIEL_ID, TURMANZAHL, BOSSKILLS)
VALUES (4565, 5, 3);
INSERT INTO KLASSISCH(SPIEL_ID, TURMANZAHL, BOSSKILLS)
VALUES (4572, 9, 8);
COMMIT;

--Arena(Spiel_ID, Runden)
INSERT INTO ARENA(SPIEL_ID, RUNDEN)
VALUES (4579, 12);

--Team(Team_ID, Spieleranzahl, Farbe)
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (1937, 5, 'Rot');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
Values (8473, 5, 'Rot');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (6382, 5, 'Blau');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (9924, 5, 'Blau');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (4493, 2, 'Pink');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (6473, 2, 'Gruen');
INSERT INTO Team(Team_ID, Spieleranzahl, Farbe)
VALUES (7366, 2, 'Lila');

--Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Lux', 'Support', 'Weiblich', 'Fernkampf', 'Demacia', 2010, 'Mana', 'Mensch', 1937);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Braum', 'Support', 'Maennlich', 'Nahkampf', 'Freljord', 2014, 'Mana', 'Mensch', 8473);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('VI', 'Jungle', 'Weiblich', 'Nahkampf', 'Piltover', 2012, 'Mana', 'Mensch', 6382);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Viego', 'Jungle', 'Maennlich', 'Nahkampf', 'Camavor', 2021, 'Manalos', 'Untot', 9924);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Hwei', 'Mitte', 'Maennlich', 'Fernkampf', 'Ionia', 2023, 'Mana', 'Mensch', 4493);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Aurora', 'Mitte', 'Weiblich', 'Fernkampf', 'Freljord', 2024, 'Mana', 'Vastayaner', 6473);
INSERT INTO Champion(Name, Position, Geschlecht, Reichweite, Region, Jahr_Ver, Ressource, Gattung, Team_ID)
VALUES ('Miss Fortune', 'ADC', 'Weiblich', 'Fernkampf', 'Bilgewasser', 2010, 'Mana', 'Mensch', 7366);

--EXECUTE manage_Handel(Item_Name, Champion_Name, Art)
EXECUTE MANAGE_HANDEL('Trinity Force', 'Lux', 'Kauf');
EXECUTE MANAGE_HANDEL('Trinity Force', 'Lux', 'Verkauf');
EXECUTE MANAGE_HANDEL('Heartsteel', 'Braum', 'Kauf');
EXECUTE MANAGE_HANDEL('Ludens Companion', 'Miss Fortune', 'Kauf');
EXECUTE MANAGE_HANDEL('Sundered Sky', 'Viego', 'Kauf');
EXECUTE MANAGE_HANDEL('Locket of the Iron Solari', 'Braum', 'Kauf');
EXECUTE MANAGE_HANDEL('Amplifying Tome', 'Hwei', 'Verkauf');

--Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Light Binding', 'Q', 'Aktiv', 'Lux');
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Unbreakable', 'E', 'Aktiv', 'Braum');
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Denting Blows', 'W', 'Passiv', 'VI');
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Heartbreaker', 'R', 'Aktiv', 'Viego');
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Subject: Serenity', 'W', 'Aktiv', 'Hwei');
INSERT INTO Faehigkeit(Name, Belegung, Handlungsrichtung, Champion_Name)
VALUES ('Between Worlds', 'R', 'Aktiv', 'Aurora');
INSERT INTO FAEHIGKEIT(Name, Belegung, Handlungsrichtung, Champion_Name)
VAlUES ('Strut', 'W', 'Aktiv', 'Miss Fortune');



--Faehigkeit_Effekt(Faehigkeiteff_ID, Faehigkeit_Name, Schaden, Buff)
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
Values (FAEHGEFF_SEQ.nextval, 'Light Binding', 240, 'Keinen');
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
VALUES (FAEHGEFF_SEQ.nextval, 'Unbreakable', 0, 'Schild');
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
VALUES (FAEHGEFF_SEQ.nextval, 'Denting Blows', 0, 'Bonus Schaden');
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
Values (FAEHGEFF_SEQ.nextval, 'Heartbreaker', 700, 'Unbewegbar');
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
Values (FAEHGEFF_SEQ.nextval, 'Subject: Serenity', 0, 'Moduswechsel');
INSERT INTO FAEHIGKEIT_EFFEKT (FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
VALUES (FAEHGEFF_SEQ.nextval, 'Between Worlds', 375, 'Speed');
Insert INTO FAEHIGKEIT_EFFEKT(FAEHIGKEITEFF_ID, FAEHIGKEIT_NAME, SCHADEN, BUFF)
VALUES (FAEHGEFF_SEQ.nextval, 'Strut', 0, 'Speed');

--Skins(Name, Jahr_Er, Reihe, Preis, Champion_Name)
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Lunar Empress', 2018, 'Lunar Revel', 1350, 'Lux');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Braum Lionheart', 2015, 'Rift Quest', 750, 'Braum');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Primal Ambush', 2024, 'Primal Ambush', 1350, 'VI');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('King', 2022, 'Ruination', 1350, 'Viego');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Winterblessed', 2023, 'Winterblessed', 1350, 'Hwei');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Battle Bunny', 2024, 'Anima Squad', 1350, 'Aurora');
INSERT INTO SKINS(NAME, JAHR_ER, REIHE, PREIS, CHAMPION_NAME)
VALUES ('Crime City', 2011, 'Crime City', 975, 'Miss Fortune');

COMMIT;