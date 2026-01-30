CREATE OR REPLACE TRIGGER verhindere_champion_loeschung
BEFORE DELETE ON Champion
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20100, 'Löschen von Champions ist aus Sicherheitsgründen deaktiviert.');
END;
/
CREATE OR REPLACE TRIGGER verhindere_Faehigkeit_loeschung
BEFORE DELETE ON Faehigkeit
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20101, 'Löschen von Faehigkeit ist aus Sicherheitsgründen deaktiviert.');
END;
/
CREATE OR REPLACE TRIGGER verhindere_ITEM_loeschung
BEFORE DELETE ON ITEM
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20102, 'Löschen von ITEM ist aus Sicherheitsgründen deaktiviert.');
END;
/
