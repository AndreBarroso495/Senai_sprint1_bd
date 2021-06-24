CREATE DATABASE SP_Medical_Group;
GO

USE SP_Medical_Group;
GO

CREATE TABLE tipoUsuario
(
	idTipoUsuario		INT PRIMARY KEY IDENTITY
	,tituloTipoUsuario	VARCHAR(150) NOT NULL UNIQUE
);
GO

CREATE TABLE especialidade
(
	idEspecialidade		INT PRIMARY KEY IDENTITY
	,nome				VARCHAR(150) NOT NULL UNIQUE
);
GO

CREATE TABLE clinica
(
	idClinica		INT PRIMARY KEY IDENTITY
	,nome			VARCHAR(200) NOT NULL UNIQUE
	,cnpj			CHAR(14) NOT NULL
	,razaoSocial	VARCHAR(200) NOT NULL
	,endereco		VARCHAR(200) NOT NULL
);
GO

CREATE TABLE usuario
(
	idUsuario			INT PRIMARY KEY IDENTITY
	,idTipoUsuario		INT FOREIGN KEY REFERENCES tipoUsuario
	,nome				VARCHAR(200) NOT NULL UNIQUE
	,email				VARCHAR(200) NOT NULL UNIQUE
	,senha				VARCHAR(50) 
);
GO

CREATE TABLE paciente
(
	idPaciente			INT PRIMARY KEY IDENTITY
	,idUsuario			INT FOREIGN KEY REFERENCES usuario
	,nomePaciente		VARCHAR(200) NOT NULL UNIQUE
	,dataNascimento		DATETIME NOT NULL
	,telefone			VARCHAR(14) 
	,rg					VARCHAR(14) NOT NULL
	,cpf				CHAR(11) NOT NULL
	,endereco			VARCHAR(200) NOT NULL
);
GO

CREATE TABLE medico
(
	idMedico			INT PRIMARY KEY IDENTITY
	,nomeMedico				VARCHAR(200) NOT NULL UNIQUE
	,idUsuario			INT FOREIGN KEY REFERENCES usuario
	,idEspecialidade	INT FOREIGN KEY REFERENCES especialidade
	,idClinica			INT FOREIGN KEY REFERENCES clinica
	,crm				VARCHAR(12)
);
GO

CREATE TABLE consulta
(
	idConsulta			INT PRIMARY KEY IDENTITY
	,idPaciente			INT FOREIGN KEY REFERENCES paciente
	,idMedico			INT FOREIGN KEY REFERENCES medico
	,situacao			VARCHAR(20)
);
GO