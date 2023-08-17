-- LINGUAGEM SQL 
-- NÃO É CASE SENSITIVE ex: SELECT select é o mesmo comando
/*
COMENTÁRIO
DE 
MULTIPLAS LINHAS
*/

CREATE DATABASE RecursosHumanos

USE RecursosHumanos

CREATE TABLE Funcionario (
	idFuncionario INT NOT NULL,
	nome VARCHAR(50) NULL,
	endereco VARCHAR(100) NULL,
	cidade VARCHAR(50) NULL,
	estado CHAR(2) NULL,
	email VARCHAR(50) NULL UNIQUE,
	dataNascimento DATE NULL,
	PRIMARY KEY(idFuncionario)
)
/*
id 1
id 2
id 4
*/