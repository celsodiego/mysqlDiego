SELECT * FROM novadb.cidades;

USE novadb;
#EXERCÍCIO 1 
ALTER TABLE novadb.cidades 
	RENAME TO Codigo_Postal;

#EXERCÍCIO 2
SELECT * FROM Codigo_Postal;

#EXERCÍCIO 3
ALTER TABLE Codigo_Postal 
	RENAME COLUMN Area 
    TO Area_Km;

ALTER TABLE Codigo_Postal
	RENAME COLUMN Area_Km 
    TO Area_Km2;

#EXERCÍCIO 4
SELECT AVG ( Area_km2)
	AS Media_Area
    FROM Codigo_Postal;
    
#EXERCÍCIO 5
SELECT Nome, Codigo_Postal
	FROM Codigo_Postal
    WHERE Area_Km2 > 80;
    
#EXERCÍCIO 6
SELECT * FROM Codigo_Postal 
	WHERE Codigo_Postal = 7830;
