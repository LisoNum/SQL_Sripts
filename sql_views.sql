CREATE VIEW Legendäre_ITEMS (Name, Peis)
AS SELECT Name, PREIS FROM ITEM WHERE Item.SELTENHEIT = 'Legendär';

CREATE OR REPLACE VIEW Gewinner (Name, Item_Name, Farbe, Team_ID)
AS SELECT c.Name, k.ITEM_NAME, t.FARBE, t.TEAM_ID FROM Spielmodus s, Team t, CHAMPION c, Kauft k
WHERE s.Spiel_ID = t.Spiel_ID and t.Team_ID = c.Team_ID and s.Gewinner = t.Farbe and c.Name = k.CHAMPION_NAME and k.ART = 'Kauf';

CREATE OR REPLACE VIEW Verlierer (Name, Farbe, Team_ID)
AS SELECT c.Name, t.FARBE, t.TEAM_ID FROM SPIELMODUS s, TEAM t, CHAMPION c
WHERE s.SPIEL_ID = t.SPIEL_ID and t.TEAM_ID = c.Team_ID and s.Gewinner != t.FARBE;

-- CREATE OR REPLACE VIEW Ultimates (Name, Champion_Name, Schaden, Buff)
-- AS SELECT f.Name, f.Champion_Name, feff.Schaden, feff.Buff FROM FAEHIGKEIT.f, FAEHIGKEIT_EFFEKT.feff 
-- WHERE f.Belegung = 'R' and f.Faehigkeit_Name = feff.Faehigkeit_Name;
