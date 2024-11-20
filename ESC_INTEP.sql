CREATE DATABASE ESC_INTEP;

USE ESC_INTEP;

CREATE TABLE Estudantes (
	ID_Estudante INT ,
    Nome VARCHAR (30),
    Idade INT,
    Data_Nascimento DATE,
    PRIMARY KEY (ID_Estudante)
);



INSERT INTO Estudantes VALUES (
	201910, 'Celso Diego', 19, '2005-05-16' ),
    (201815, 'Helder Júnior', 35, '1989-01-01'),
    (202020, 'Emanuel Lázaro', 12, '2012-12-08'),
    (201511, 'Diego lima', 15,'2009-10-11');

UPDATE Estudantes
SET Idade = 12, Data_Nascimento = '2012-05-16'
WHERE Nome = "Celso Diego";

DELETE FROM Estudantes
WHERE Idade > 35;

CREATE TABLE Sum (
	ID_Pedido INT,
    Empresa VARCHAR (20),
    Quantidade INT
);

INSERT INTO Sum VALUES (
	1, 'A', 20),
    (2, 'B', 50),
    (3, 'B', 50
);

INSERT INTO Sum VALUES (
	5, 'C', NULL);

INSERT INTO Sum VALUES (
	4, 'B', NULL);

INSERT INTO Sum VALUES (
	6, 'A', 40),
    (7, 'C', 80
);
    
SELECT Sum(Quantidade) 
AS Sum_Total
FROM Sum;

SELECT Empresa , Sum(Quantidade) 
AS Sum_Total
FROM Sum
GROUP BY Empresa;

SELECT Sum(Idade)
AS Total_Idade
FROM Estudantes;

SELECT Sum(Idade)
AS Total_Idade_Maior_18
FROM Estudantes
WHERE Idade > 18;

SELECT COUNT(*) 
AS Total_Estudantes 
FROM Estudantes;

SELECT COUNT(*)
AS Estudantes_Maior_20
FROM Estudantes
WHERE Idade > 20;

SELECT AVG(Quantidade)
AS Media_Quantidade
FROM Sum;

SELECT Empresa, AVG(Quantidade) 
AS Media_Empresa
FROM Sum
GROUP BY Empresa;

CREATE TABLE MinMax(
	ID_Pedido INT,
    Cliente VARCHAR (20),
    Data_Entrega DATE
);

INSERT INTO MinMax VALUES (
	1, "C01", '1986-12-20'),
    (2, "C02", '1989-12-19'),
    (3, "C03", '2012-08-02');
    
SELECT Min(Data_Entrega) FROM MinMax;
SELECT Max(Data_Entrega) FROM MinMax;
