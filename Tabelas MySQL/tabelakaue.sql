-- Criar DATABASE 

CREATE DATABASE sprint1;

-- Usar a DATABASE

USE sprint1;

-- Criar tabela Paciente, alteração na linha 13

CREATE TABLE Paciente (
idPaciente int primary key auto_increment,
CPF_RNE char(11),
Nome varchar (120),
Email varchar (120),
DtNasc DATE,
Genero varchar(40),
constraint chkGenero check (Genero in ('Masculino','Feminino')),
Peso FLOAT,
Altura DOUBLE,
Diagnostico varchar (40),
Convenio varchar(40)
);

-- Inserir dados na tabela

INSERT INTO Paciente (CPF_RNE, Nome, Email , DtNasc, Genero, Peso, Altura, Diagnostico, Convenio) VALUES
 (48867849345, 'Paulo', '.com', '2002-10-10', 'Masculino', 80, 1.75, 'Pneumonia', 'UNIMED');
 
 -- Selecionar tabela
 
 SELECT * FROM Paciente;
 
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
 
 -- Criar tabela Medico, alteração na linha 56
 
 CREATE TABLE Medico (
 idMedico int primary key auto_increment,
 CPF_RNE char(11),
 Nome varchar (120),
 Email varchar (120),
 Funcao varchar (40), 
 constraint chkFuncao check 
 (Funcao in ('Médico', 'Médica', 'Enfermeiro', 'Enfermeira'))
);
 
 -- Inserindo dados na tabela
 
INSERT INTO Medico (CPF_RNE, Nome, Email, Funcao) VALUES
	(49999973939,'Valdemir Santos','valdemir.santos@outlook.com','Enfermeiro');

-- Selecionar tabela Medico
SELECT * FROM Medico;