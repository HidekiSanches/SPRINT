-- Criar DATABASE 

CREATE DATABASE sprint1;

-- Usar a DATABASE

USE sprint1;

-- Criar tabela Paciente

CREATE TABLE Paciente (
idPaciente int primary key auto_increment,
CPF char(11),
Nome varchar (120),
Email varchar (120),
DtNasc DATE,
Genero varchar(40), constraint chkGenero check (Genero in ('Masculino','Feminino')),
Peso FLOAT,
Altura DOUBLE,
Diagnostico varchar (40),
Convenio varchar(40)
);

-- Inserir dados na tabela

INSERT INTO Paciente (CPF, Nome, Email , DtNasc, Genero, Peso, Altura, Diagnostico, Convenio) VALUES
 ('48867849345', 'Paulo', 'paulo@gmail.com', '2000-10-10', 'Masculino', 80, 1.75, 'Pneumonia', 'UNIMED'),
 ('47564322213', 'Rebeca', 'rebeca@gmail.com', '2002-09-12', 'Feminino', 64, 1.68, 'Hipotermia', 'UNIMED');
 
 -- Selecionar tabela
 
 SELECT * FROM Paciente;
 SELECT idPaciente, nome, diagnostico FROM Paciente;
 
 -- Criar a tabela Temperatura
 
 CREATE TABLE Temperatura (
 idTemp int primary key auto_increment,
 Temp5min DOUBLE,
 Temp10min DOUBLE,
 Temp15min DOUBLE,
 Temp20min DOUBLE,
 Temp25min DOUBLE
 );
 
 INSERT INTO Temperatura (Temp5min, Temp10min, Temp15min, Temp20min, Temp25min) Values
		(20.8, 22.5, 25.0, 27.0, 28);
        
        
 -- Selecionar tabela  Temperatura
 
 SELECT * FROM Temperatura;
 
 -- Criar tabela Medico
 
 CREATE TABLE Medico (
 idMedico int primary key auto_increment,
 CPF char(11),
 Nome varchar (120),
 Email varchar (120),
 Funcao varchar (40), 
 constraint chkFuncao check 
 (Funcao in ('Médico', 'Médica', 'Enfermeiro', 'Enfermeira'))
);
 
 -- Inserindo dados na tabela
 
INSERT INTO Medico (CPF, Nome, Email, Funcao) VALUES
	('49999973939','Valdemir Santos','valdemir.santos@outlook.com','Enfermeiro'),
    ('23487690987', 'Juliana Andrade', 'juliana.andrade@hotmail.com', 'Médica');

-- Selecionar tabela Medico
SELECT * FROM Medico;