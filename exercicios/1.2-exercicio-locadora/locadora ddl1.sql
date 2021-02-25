CREATE DATABASE Locadora;

CREATE TABLE Empresas
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Marcas
(
	idMarca		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Modelos
(
	idModelo	INT PRIMARY KEY IDENTITY
	,idMarca	INT FOREIGN KEY REFERENCES Marcas
	,Descricao	VARCHAR(300)
);

CREATE TABLE Clientes
(
	idCliente	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(150) NOT NULL
	,Cpf		VARCHAR(20) NOT NULL
);

CREATE TABLE Veiculos
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresas
	,idMarca	INT FOREIGN KEY REFERENCES Marcas
	,Placa		VARCHAR(10)
);

CREATE TABLE Alugueis
(
	idAluguel	INT PRIMARY KEY IDENTITY
	,idVeiculo	INT FOREIGN KEY REFERENCES Veiculos
	,idCliente	INT FOREIGN KEY REFERENCES Clientes
	,DataInicio	DATETIME
	,DataFim	DATETIME
);
