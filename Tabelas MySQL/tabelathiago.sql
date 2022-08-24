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
Diagnostico varchar (40)
GeneroBiologico varchar(40)
constraint chkGeneroBiologico chek (GeneroBiologico in ('Maculino','Feminino')) 
);

-- Inserir dados na tabela
INSERT INTO Paciente (CPF,Nome,DtNasc,Peso) VALUES
 (48867849340, 'Pedro', '2002-10-10', 80);
 
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
 Email varchar (120),
 Funcao varchar (40), 
 constraint chkFuncao check 
 (Funcao in ('Médico', 'Médica', 'Enfermeiro', 'Enfermeira'))
);

-- Selecionar tabela Medico
SELECT * FROM Medico;