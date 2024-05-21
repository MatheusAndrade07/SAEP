-- Use o banco de dados iCar
CREATE DATABASE iCar
USE iCar;
GO

-- Crie a tabela Clientes
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255)
);

-- Crie a tabela Concessionarias
CREATE TABLE Concessionarias (
    id INT PRIMARY KEY,
    concessionaria VARCHAR(255)
);

-- Crie a tabela Automoveis
CREATE TABLE Automoveis (
    id INT PRIMARY KEY,
    modelo VARCHAR(255),
    preco DECIMAL(10, 2)
);

-- Crie a tabela Areas
CREATE TABLE Areas (
    id INT PRIMARY KEY,
    numero INT,
    ocupacao TINYINT
);

-- Crie a tabela Alocacao
CREATE TABLE Alocacao (
    id INT PRIMARY KEY,
    area INT,
    automovel INT,
    concessionaria INT,
    quantidade INT,
    FOREIGN KEY (area) REFERENCES Areas(id),
    FOREIGN KEY (automovel) REFERENCES Automoveis(id),
    FOREIGN KEY (concessionaria) REFERENCES Concessionarias(id) 
);

BULK INSERT Clientes
FROM 'D:\SAEP Prova\dados\clientes.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Importe dados para a tabela Concessionarias
BULK INSERT Concessionarias
FROM 'D:\SAEP Prova\dados\concessionarias.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Importe dados para a tabela Automoveis
BULK INSERT Automoveis
FROM 'D:\SAEP Prova\dados\automoveis.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

-- Importe dados para a tabela Alocacao
BULK INSERT Alocacao
FROM 'D:\SAEP Prova\dados\alocacao.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);