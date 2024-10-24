CREATE DATABASE Armazém;
USE Armazém;

CREATE TABLE Produtos(
	COD_PROD INT NOT NULL,
    ID_NF INT not null,
    ID_ITEM INT NOT NULL,
    VALOR_UNIT DOUBLE NOT NULL,
    QUANTIDADE INT NOT NULL,
    DESCONTO INT NULL
);

INSERT INTO Produtos (
	COD_PROD, ID_NF, ID_ITEM, VALOR_UNIT, QUANTIDADE, DESCONTO
    )
    VALUES
    (5, 4, 1, 30.00, 10, 15),
    (4, 4, 2, 10.00, 12, 5),
    (1, 4, 3, 25.00, 13, 5),
    (2, 4, 4, 13.00, 15, 5),
    (3, 5, 1, 15.00, 3, NULL),
    (5, 5, 2, 30.00, 6, NULL),
    (1, 6, 1, 25.00, 22, 15),
    (3, 6, 2, 15.00, 25, 20),
    (1, 7, 1, 25.00, 10, 3),
    (2, 7, 2, 13.50, 10, 4),
    (3, 7, 3, 15.00, 10, 4),
    (5, 7, 4, 30.00, 10, 1);

SELECT * FROM Produtos;

#EXERCICIO 1
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT
FROM Produtos
WHERE DESCONTO IS NULL;

#EXRCICIO 2
update Produtos
set descontos = 0
where desconto is null;

#EXERCÍCIO 3
SELECT COD_PROD, QUANTIDADE
FROM Produtos
WHERE DESCONTO > 10 AND DESCONTO < 20;

#EXERCÍCIO 4
SELECT QUANTIDADE, VALOR_UNIT
FROM Produtos
WHERE COD_PROD = 2;