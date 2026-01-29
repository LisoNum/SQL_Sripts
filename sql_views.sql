CREATE VIEW Legendäre_ITEMS (Name, Peis)
AS SELECT Name, PREIS FROM ITEM WHERE Item.SELTENHEIT = 'Legendär';

CREATE OR REPLACE VIEW Gewinner (Name, Item_Name, Farbe, Team_ID)
AS SELECT c.Name, k.ITEM_NAME, t.FARBE, t.TEAM_ID FROM Spielmodus s, Team t, CHAMPION c, Kauft k
WHERE s.Spiel_ID = t.Spiel_ID and t.Team_ID = c.Team_ID and s.Gewinner = t.Farbe and c.Name = k.CHAMPION_NAME and k.ART = 'Kauf';

CREATE OR REPLACE VIEW Verlierer (Name, Farbe, Team_ID)
AS SELECT c.Name, t.FARBE, t.TEAM_ID FROM SPIELMODUS s, TEAM t, CHAMPION c
WHERE s.SPIEL_ID = t.SPIEL_ID and t.TEAM_ID = c.Team_ID and s.Gewinner != t.FARBE;

CREATE OR REPLACE VIEW Item_Info (Name, Champion_Name, Schaden, Buff, Belegung)
AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff, f.Belegung FROM FAEHIGKEIT f, FAEHIGKEIT_EFFEKT feff  
WHERE f.NAME = feff.Faehigkeit_Name;

CREATE OR REPLACE VIEW  Q_Ability (Name, Champion_Name, Schaden, Buff)
AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff FROM FAEHIGKEIT f, FAEHIGKEIT_EFFEKT feff  
WHERE f.NAME = feff.Faehigkeit_Name and f.BELEGUNG = 'Q';

CREATE OR REPLACE VIEW  W_Ability (Name, Champion_Name, Schaden, Buff)
AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff FROM FAEHIGKEIT f, FAEHIGKEIT_EFFEKT feff  
WHERE f.NAME = feff.Faehigkeit_Name and f.BELEGUNG = 'W';

CREATE OR REPLACE VIEW  E_Ability (Name, Champion_Name, Schaden, Buff)
AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff FROM FAEHIGKEIT f, FAEHIGKEIT_EFFEKT feff  
WHERE f.NAME = feff.Faehigkeit_Name and f.BELEGUNG = 'E';

CREATE OR REPLACE VIEW  R_Ability (Name, Champion_Name, Schaden, Buff)
AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff FROM FAEHIGKEIT f, FAEHIGKEIT_EFFEKT feff  
WHERE f.NAME = feff.Faehigkeit_Name and f.BELEGUNG = 'R';

COMMIT;