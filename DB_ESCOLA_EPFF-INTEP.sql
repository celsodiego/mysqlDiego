CREATE DATABASE Escola_INTEP;

USE Escola_INTEP;

CREATE TABLE Estudantes (
	ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR (100),
    Idade INT,
    Data_Nascimento DATE NOT NULL);
    
INSERT INTO Estudantes (
	ID_Aluno, Nome, Idade, Data_Nascimento)
    VALUES 
    (1, 'Ana Bela', 15, '2009-01-01'),
    (2, 'Bruno Viegas', 16, '2008-02-02'),
    (3, 'Celso Jesus', 20, '2004-07-16'),
    (4, 'Diego Lima', 19, '2005-05-16'),
    (5, 'Jeizy Luciano', 16, '2007-11-29');

SELECT * FROM Estudantes;

SELECT * FROM Estudantes 
	WHERE Idade > 18;

SELECT * FROM Estudantes 
	ORDER BY Idade DESC;

SELECT * FROM Estudantes 
	ORDER BY Idade DESC LIMIT 3;

SELECT COUNT(Estudantes.Nome) 
	AS Total_Estudante
	FROM Estudantes;

SELECT AVG(Estudantes.Idade)
	FROM Estudantes;
    
SELECT  MAX(Idade) AS Idade_Maxima, 
	MIN(Idade) AS Idade_Minima
    FROM Estudantes;
    


















    