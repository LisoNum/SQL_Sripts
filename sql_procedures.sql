CREATE OR REPLACE PROCEDURE manage_Handel
(i_name VARCHAR, c_Name VARCHAR, art VARCHAR)
AS
v_preis NUMBER;
Begin
    IF art = 'Kauf' THEN
        INSERT INTO Kauft(Item_Name, Champion_Name, Art, Verkaufspreis)
        VALUES (i_name, c_Name, 'Kauf', 0);
    ELSE 
        SELECT ITEM.PREIS INTO v_preis FROM ITEM WHERE ITEM.NAME = i_name;
        INSERT INTO Kauft(Item_Name, Champion_Name, Art, Verkaufspreis)
        VALUES (i_name, c_Name, 'Verkauf',  v_preis*0.5);
    END IF;
END;