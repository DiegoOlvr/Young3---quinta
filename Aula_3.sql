USE RecursosHumanos
-- DATA E HORA
/*
Por padrão as datas estão no formato
ano, mês e dia (YMD)
Para alterar pro formato brasileiro
comando:
SET DATEFORMAT DMY
*/
SET DATEFORMAT DMY
-- PEGAR DATA ATUAL
SELECT GETDATE()
SELECT * FROM Funcionario
-- PEGAR DIA 
SELECT nome, DAY(dataNascimento) AS Dia_do_nascimento
FROM Funcionario
-- PEGAR MÊS
SELECT nome, MONTH(dataNascimento) AS Mes_do_nascimento
FROM Funcionario
-- PEGAR ANO
SELECT nome, YEAR(dataNascimento) AS Ano_do_nascimento
FROM Funcionario

-- DateAdd => ADICIONA UM VALOR NUMÉRICO A PARTIR DAQUELE DATA
SELECT dataNascimento, DATEADD(DAY, 5, dataNascimento) AS newDate
FROM Funcionario
SELECT dataNascimento, DATEADD(MONTH, 7, dataNascimento) AS newDate
FROM Funcionario
SELECT dataNascimento, DATEADD(YEAR, 3, dataNascimento) AS newDate
FROM Funcionario

-- DATEDIFF
SELECT nome, DATEDIFF(DAY, dataNascimento, GETDATE()) 
FROM Funcionario
SELECT nome, DATEDIFF(MONTH, dataNascimento, GETDATE()) 
FROM Funcionario
SELECT nome, DATEDIFF(YEAR, dataNascimento, GETDATE()) 
FROM Funcionario

-- DATENAME
SELECT nome, dataNascimento, DATENAME(MONTH, dataNascimento) AS NOME_DO_MES
FROM Funcionario
-- TRÁS O NOME DO DIA DA SEMANA
SELECT nome, dataNascimento, DATENAME(WEEKDAY, dataNascimento) AS NOME_DO_DIA
FROM Funcionario
-- TRÁS O NÚMERO DA SEMANA NO ANO
SELECT nome, dataNascimento, DATENAME(WEEK, dataNascimento) AS NUMERO_DA_SEMANA
FROM Funcionario

-- MATH
-- NÚMERO ABSOLUTO
SELECT ABS(-10)
-- POTÊNCIA 2^3
SELECT POWER(2,3)
-- SQUAR ROOT = RAIZ QUADRADA
SELECT ROUND(SQRT(24),2)
-- ARREDONDAMENTO
SELECT ROUND(7.56, 1)
-- LOGARITMO
SELECT LOG(4)
-- CONSTANTE DE PI
SELECT PI()
SELECT ROUND(LOG(SQRT(9)),2)
SELECT PI()/2
SELECT ROUND(PI(),4)

-- ARREDONDANDO NÚMEROS PARA INTEIROS
SELECT ROUND(salario, 0) 
FROM Funcionario

-- STRING
SELECT ASCII('A')
SELECT ASCII('a')
SELECT CHAR(65)
SELECT LEN('amor')
SELECT LEFT('DIEGO', 2)
SELECT RIGHT('DIEGO', 3)
SELECT LOWER('DIEGO')
SELECT UPPER('diego')
SELECT SUBSTRING('panela', 2, 4)
SELECT REPLACE('guarda-chuva','a','4')
SELECT LEN(TRIM('   DIEGO   '))
SELECT LTRIM('   DIEGO   ')

-- AGREGAÇÃO
-- CONTA QUANTAS LINHAS HÁ NA TABELA
SELECT COUNT(*)
FROM Funcionario

-- QUANTOS REGISTROS ÚNICOS DE CIDADE EXISTE NA TABELA
SELECT COUNT(DISTINCT cidade)
FROM Funcionario

-- SOMA
SELECT SUM(salario)
FROM Funcionario

-- MÉDIA ARITMÉTICA
SELECT AVG(salario)
FROM Funcionario

-- MÁXIMO
SELECT MAX(salario)
FROM Funcionario

-- MÍNIMO
SELECT MIN(salario)
FROM Funcionario

-- ERRADO
SELECT cidade, COUNT(*) AS Qtd_Funcionarios_Cidade
FROM Funcionario
-- CERTO
SELECT cidade, COUNT(*) AS Qtd_Funcionarios_Cidade
FROM Funcionario
GROUP BY cidade

--INSERT INTO Funcionario
--VALUES (
--	5,
--	'Vinicius Monarolo',
--	'R. dos Vencedores, 171',
--	'Jundiai',
--	'SP',
--	'vini.monanrolo@gmail.com',
--	'2005-07-29',
--	3500.00,
--	'AL')

-- MOSTRAR TODOS OS VALORES QUE SÃO ACIMA DE 2
SELECT cidade, COUNT(*) AS Qtd_Funcionarios_Cidade
FROM Funcionario
-- WHERE COUNT(*) > 2 
GROUP BY cidade
HAVING COUNT(*) > 2 -- MEIO CORRETO QUANTO HÁ AGRUPAMENTO

-- OBS: USAR WHERE APENAS QUANDO NÃO HÁ AGRUPAMENTO

-- TOP
-- MOSTRA TODOS 
SELECT *
FROM Funcionario

-- MOSTRAR APENAS OS 3 PRIMEIROS
SELECT TOP 3 *
FROM Funcionario

SELECT TOP 50 PERCENT *
FROM Funcionario

SELECT TOP 4 nome, dataNascimento
FROM Funcionario
ORDER BY nome DESC