-- Criar DATABASE 
CREATE DATABASE sprint1;

-- Usar a DATABASE
USE sprint1;

-- Criar tabela Paciente
CREATE TABLE Paciente (
idCPF char(11) primary key not null,
Nome varchar (120),
DtNasc DATE,
Peso FLOAT,
Altura DOUBLE,
Diagnostico varchar (40),
Genero varchar(40),
constraint chkGenero check (Genero in ('Maculino','Feminino')),
Convenio varchar(40),
Email varchar (120)
constraint chkemail check(Email in ('@', '.com'))
);

-- Inserir dados na tabela
INSERT INTO Paciente (idCPF,Nome,DtNasc,Peso, Altura, Diagnostico, Genero, Convenio, Email) VALUES
 (48867849345, 'Paula', '2002-10-10', 80, 1.75, 'Câncer','Masculino','UNIMED','Paula.santosoutlook.com');
 
 -- Selecionar tabela
 SELECT * FROM Paciente;
 
 -- Criar a tabela Temperatura
 CREATE TABLE Temperatura (
 idCPF char(11) primary key not null,
 Temp5min DOUBLE,
 Temp10min DOUBLE,
 Temp15min DOUBLE,
 Temp20min DOUBLE,
 Temp25min DOUBLE
 );

 -- Selecionar tabela  Temperatura
 SELECT * FROM Temperatura;
 
 -- Criar tabela Medico
 CREATE TABLE Medico (
 idCPF char(11) primary key not null,
 Nome varchar (120),
 Email varchar (120)
 constraint chkemailM check(Email in ('@', '.com')),
 Funcao varchar (40), 
 constraint chkFuncao check 
 (Funcao in ('Médico', 'Médica', 'Enfermeiro', 'Enfermeira'))
);
 
 -- Inserindo dados na tabela
 
INSERT INTO Medico (idCPF, Nome, Email, Funcao) VALUES
					(49999973939,'Valdemir Santos','valdemir.santos@outlook.com','Enfermeiro');

-- Selecionar tabela Medico
SELECT * FROM Medico;

-- Inserindo dados
INSERT INTO Medico (idCPF, Nome, Email, Funcao) VALUES
	(49116501845, 'Mariana Namie', 'mariana.ribeiro@sptech.school', 'Médica');






