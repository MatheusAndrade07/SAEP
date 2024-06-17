CREATE DATABASE iCar;
GO

USE iCar;
GO

-- Crie a tabela Clientes
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL  -- nome não pode ser nulo
);

-- Crie a tabela Concessionarias
CREATE TABLE Concessionarias (
    id INT PRIMARY KEY,
    concessionaria VARCHAR(255) NOT NULL  -- concessionaria não pode ser nulo
);

-- Crie a tabela Automoveis
CREATE TABLE Automoveis (
    id INT PRIMARY KEY,
    modelo VARCHAR(255) NOT NULL,  -- modelo não pode ser nulo
    preco DECIMAL(10, 2) NOT NULL  -- preco não pode ser nulo
);

-- Crie a tabela Alocacao
CREATE TABLE Alocacao (
    id INT PRIMARY KEY,
    area INT NOT NULL,  -- area não pode ser nulo
    automovel INT NOT NULL,  -- automovel não pode ser nulo
    concessionaria INT NOT NULL,  -- concessionaria não pode ser nulo
    quantidade INT NOT NULL,  -- quantidade não pode ser nulo  
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
