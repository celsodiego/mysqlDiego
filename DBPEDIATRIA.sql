# Sintaxe para criar uma base de dados 
CREATE DATABASE Pediatria;
USE Pediatria;

#Sintaxe parar cirar a tabela Mãe
CREATE TABLE Mae(
	id_mae INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    morada VARCHAR(100) NOT NULL, 
    data_nascimento DATE NOT NULL,
    FOREIGN KEY(id_bebe) REFERENCES Bebe(id_bebe) ,
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
    contacto INT);

#Sintaxe parar cirar a tabela Bebé
CREATE TABLE Bebe(id_bebe INT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 data_nascimento DATE NOT NULL,
 peso DOUBLE,
 altura DOUBLE,
 FOREIGN KEY (id_mae) REFERENCES Mae(id_mae),
 FOREIGN KEY(id_medico) REFERENCES Medico(id_medico));

 #Sintaxe parar cirar a tabela Médico
CREATE TABLE Medico(	
	id_medico INT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
    contacto INT,
    especialidade VARCHAR(100) NOT NULL,
    FOREIGN KEY(id_mae) REFERENCES Mae(id_mae),
    FOREIGN KEY(id_bebe) REFERENCES Bebe(id_bebe)
);
 

