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
Genero varchar(40),
constraint chkGenero check (Genero in ('Masculino','Feminino')),
Peso FLOAT,
Altura DOUBLE,
Sintomas varchar(160),
Diagnostico varchar (40),
Convenio varchar(40)
);

-- Inserir dados na tabela

INSERT INTO Paciente (CPF, Nome, Email , DtNasc, Genero, Peso, Altura, Sintomas, Diagnostico, Convenio) VALUES
 (48867849345, 'Paulo', '.com', '2002-10-10', 'Masculino', 80, 1.75,'Calafrio, Dor de cabeça e Fadiga', 'Pneumonia', 'UNIMED');
 
 insert into paciente (cpf, nome, email, dtnasc, genero, peso, altura, sintomas, diagnostico, convenio)
 values
 (69870164021, 'Roberto', '.com', '2000-02-28', 'Masculino', 85, 1.79, 'Náusea e Secreção', 'Sinusite','UNIMED'),
 (31475697058, 'Milena','.com', '1984-09-04', 'Feminino', 64, 1.65, 'Tremores e cansaço excessivo', 'Hipotermia', 'AMIL'),
 (96254394049, 'Fernanda','.com', '1978-03-30', 'Feminino', 59, 1.60, 'Desconforto Abdominal e Gases', 'Gastrite', 'Notredame Intermédica'),
 (04287699009, 'Leonardo','.com', '1988-07-22', 'Masculino', 72, 1.76, 'Temperatura Corporal de 34.5°C', 'Hipotermia', 'UNIMED'),
 (04287699009, 'Marcos','.com', '1988-07-12', 'Masculino', 67, 1.69, 'Dor de cabeça e vomito', 'Gripe', 'AMIL'),
 (04287699009, 'Kaylane','.com', '1995-08-18', 'Feminino', 59, 1.58, 'Febre e manchas avermelhadas', 'Dengue', 'AMIL'),
 (04287699009, 'David','.com', '2003-04-03', 'Masculino', 67, 1.72, 'Temperatura Corporal de 34°C, fraqueza e tremores', 'Hipotermia', 'Notredame Intermédica');
  
 

 
 
 
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
		(20.8, 22.5, 25.0, 27.0, 28),
        (20.5, 22.7, 24.9, 24.0, 23.2),
        (23.4, 22.5, 23.6, 24.2, 26.3),
        (25.6, 24.7, 25.3, 23.4, 25.8),
        (23.7, 23.5, 25.3, 23.4, 24.8);
        
        
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
	(49999973939,'Valdemir Santos','valdemir.santos@outlook.com','Enfermeiro'),
	(46007947025,'Max Medeiros','max.medeiros@outlook.com','Médico'),
	(15428451068,'Paulo Muzy','Paulo.Muzy@outlook.com','Médico'),
	(57295394010,'Roberta Silva','roberta.silva@outlook.com','Enfermeira'),
	(10153655070,'Sara Cristina','sara.cristina@outlook.com','Enfermeira'),
	(98180520056,'Guilherme Pereira','guilherme.pereira@outlook.com','Enfermeiro'),
	(85078946071,'Josemar Costa','josemar.costa@outlook.com','Médico'),
	(28877832037,'Flavia Sobreira','josemar.costa@outlook.com','Médica'),
	(31578361028,'Matheus Yoshida','matheus.yoshida@outlook.com','Médico'),
	(13871054003,'Karen Naomy','karen.naomy@outlook.com','Médica');
    
    

-- Selecionar tabela Medico
SELECT * FROM Medico;

 CREATE TABLE Cliente (
 idCliente int primary key auto_increment,
 CNPJ char(14),
 Nome varchar (120),
 Email varchar (120)
);

insert into cliente (cnpj, nome, email)
values
(31404808000168,'Fernando Duarte Brandão', 'fernando.brand@gmail.com.br'),
(59813354000106,'Jorge Moll Filho','jorge_molif@gmail.com.br'),
(96724115000106,'Dulce Pugliese de Godoy Bueno', 'dulcepug@gmail.com.br'),
(96724115000106,'Candido Pinheiro Koren de Lima','candido.pinheiro@gmail.com.br');

select * from cliente;