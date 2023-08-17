--CREATE DATABASE RecursosHumanos

--USE RecursosHumanos

--CREATE TABLE Funcionario (
--idFuncionario INT NOT NULL,
--nome VARCHAR(50) NULL,
--endereco VARCHAR(100) NULL,
--cidade VARCHAR(50) NULL,
--estado CHAR(2) NULL,
--email VARCHAR(50) NULL UNIQUE,
--dataNascto DATE NULL,
--PRIMARY KEY(idFuncionario)
--)

-- ALTER => ALTERA ALGUMA INFORMAÇÃO
ALTER TABLE Funcionario ADD
salario DECIMAL(7,2) NULL,
cargos VARCHAR(2) NULL

-- DROP => DELETA UMA TABELA OU UM DATABASE
DROP TABLE Funcionario
DROP DATABASE RecursosHumanos

-- CREATE INDEX => criar um indice

-- CRUD
-- CREATE => CREATE
-- READ   => SELECT
-- UPDATE => INSERT / UPDATE
-- DELETE => DELETE

-- INSERT: SERVE PARA INSERIR UM NOVO REGISTRO
INSERT INTO Funcionario 
VALUES 
	(1, 
	'José da Silva', 
	'Av. São Paulo, 33', 
	'São Paulo', 
	'SP',
	'zesilva@gmail.com',
	'1991-02-24',
	1500.00,
	'AA'
	)

INSERT INTO Funcionario
VALUES (
	2,
	'Diego Ramos',
	'R. Dr. Eloy Chaves, 178',
	'Jundiai',
	'SP',
	'diego.ramos@gmail.com',
	'1994-06-30',
	2000.00,
	'PR')

INSERT INTO Funcionario
VALUES
	(3, 'Ana Pimentel', 'Rua da Saúde, 11', 'Jundiai', 'SP', 
	'pimentalana@gmail.com', '1990-02-07', 4000, 'TI'),
	(4, 'Mario Brothers', 'Rua dos encanadores, 145', 'Varzea Paulista', 'SP',
	'brothers.mario@gmail.com', '1992-03-04', 2000, 'EN')


-- UPDATE => ATUALIZAR
-- OBS: NÃO ESQUECER DE USAR O WHERE, SE NÃO APLICA A ALTERAÇÃO PARA TODO O DB
UPDATE Funcionario SET cidade='Varzea Paulista' WHERE cidade='São Paulo'

-- SELECT => SELECIONAR
-- SINTAXE
/*
SELECT [DISTINCT] | ALL [*] <NOME DA COLUNA> [,NOME DA OUTRA COLUNA]
FROM <NOME DA TABELA> [, NOME DA OUTRA TABELA]
WHERE <CONDIÇÃO>
GROUP BY <NOME DE UMA COLUNA>
HAVING <CONDIÇÃO>
ORDER BY <NOME DO CAMPO> ASC|DESC
*/

-- SELECT PARA MOSTRAR TUDO
SELECT * FROM Funcionario

-- SELECT MOSTRAR TODOS OS FUNCIONARIOS ORDENADO PELO NOME
SELECT * FROM Funcionario ORDER BY nome ASC

-- SELECT para mostrar o nome e email dos funcionário de jundiai
SELECT nome, email FROM Funcionario	WHERE cidade='varzea paulista'

-- SELECT para mostrar os registros únicos do banco de dado
SELECT DISTINCT cidade FROM Funcionario

-- OPERADORES ARITMÉTICOS
/*
+ => ADIÇÃO 
- => SUBTRAÇÃO
/ => DIVISÃO
* => MULTIPLICAÇÃO
% => RESTO DA DIVISÃO
*/

SELECT salario, salario * 1.15 AS SalarioDobrado FROM Funcionario 

-- OPERADORES RELACIONAIS
/*
>   MAIOR QUE
<   MENOR QUE
=   IGUALDADE
<> OU != DESIGUALDADE
>=  MAIOR OU IGUAL A
<=  MENOR OU IGUAL A
*/

SELECT nome, salario, cargos, cidade 
FROM Funcionario
WHERE salario >= 2000

-- OPERADORES LÓGICOS
/*
AND E
OR  OU
NOT NÃO
*/

SELECT *
FROM Funcionario
WHERE NOT cidade = 'Jundiai'

SELECT *
FROM Funcionario
WHERE cidade = 'Jundiai' AND cargos = 'TI'

-- OPERADORES AUXILIARES
/*
IS NULL => Verificar se a coluna ou campo é vazio
BETWEEN => verificar entre uma faixa de valores
IN      => verificar se um valor existe 
LIKE    => Verifica se há valor semelhante
*/

SELECT *
FROM Funcionario
WHERE NOT cargos IS NULL

SELECT *
FROM Funcionario 
WHERE salario BETWEEN 1000 AND 2000

SELECT * 
FROM Funcionario
WHERE cargos IN('TI','PR')

SELECT nome
FROM Funcionario
WHERE nome LIKE '%d%'