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
Convenio varchar(40),
constraint chkConvenio check (Convenio in ('Unimed', 'Amil', 'Notredame Intermédica', 'Bradesco', 'Medical Health', 'Amil', 'Prevent Senior', 'SUS', 'Porto Seguro', 'Nenhum'))
);

-- Inserir dados na tabela

INSERT INTO Paciente (CPF, Nome, Email , DtNasc, Genero, Peso, Altura, Sintomas, Diagnostico, Convenio) VALUES
 (48867849345, 'Paulo Neves', 'paulo.neves@outlook.com', '2002-10-10', 'Masculino', 80, 1.75,'Calafrio, Dor de cabeça e Fadiga', 'Pneumonia', 'UNIMED');
 
 insert into Paciente (CPF, Nome, Email, DtNasc, Genero, Peso, Altura, Sintomas, Diagnostico, Convenio)
 values
 (69870164021, 'Roberto Gomes', 'roberto.gomes@gmail.com', '2000-02-28', 'Masculino', 85, 1.79, 'Náusea e Secreção', 'Sinusite','UNIMED'),
 (31475697058, 'Milena Santos','milena.santos@outlook.com', '1984-09-04', 'Feminino', 64, 1.65, 'Tremores e cansaço excessivo', 'Hipotermia', 'AMIL'),
 (96254394049, 'Fernanda Pires','fernanda.pires@gmail.com', '1978-03-30', 'Feminino', 59, 1.60, 'Desconforto Abdominal e Gases', 'Gastrite', 'Notredame Intermédica'),
 (04287699089, 'Leonardo Silva','leonardo.silva@gmail.com', '1988-07-22', 'Masculino', 72, 1.76, 'Temperatura Corporal de 34.5°C', 'Hipotermia', 'UNIMED'),
 (04287699099, 'Marcos Diaz','marcos.diaz@gmail.com', '1988-07-12', 'Masculino', 67, 1.69, 'Dor de cabeça e vomito', 'Gripe', 'AMIL'),
 (04287699889, 'Kaylane Souza','kaylane.souza@outlook.com', '1995-08-18', 'Feminino', 59, 1.58, 'Febre e manchas avermelhadas', 'Dengue', 'AMIL'),
 (04287699459, 'David Melo','david.melo@outlook.com', '2003-04-03', 'Masculino', 67, 1.72, 'Temperatura Corporal de 34°C, fraqueza e tremores', 'Hipotermia', 'Notredame Intermédica');
  
 -- Selecionar tabela
 
 SELECT * FROM Paciente;
 
 -- Criar a tabela Temperatura
 CREATE TABLE Temperatura (
 idTemp int primary key auto_increment,
 Temp5min DOUBLE,
 Temp10min DOUBLE,
 Temp15min DOUBLE,
 Temp20min DOUBLE,
 Temp25min DOUBLE,
 Temp30min DOUBLE
 );
<<<<<<< HEAD

 INSERT INTO Temperatura (Temp5min, Temp10min, Temp15min, Temp20min, Temp25min) Values
		(20.8, 22.5, 25.0, 27.0, 28),
        (20.5, 22.7, 24.9, 24.0, 23.2),
        (23.4, 22.5, 23.6, 24.2, 26.3),
        (25.6, 24.7, 25.3, 23.4, 25.8),
        (23.7, 23.5, 25.3, 23.4, 24.8);
        
=======
 
 INSERT INTO Temperatura (Temp5min, Temp10min, Temp15min, Temp20min, Temp25min, Temp30min) Values
		(37.2, 37.2, 37.5, 37.8, 38.3, 38.5),
        (36.4, 37.0, 37.2, 37.1, 37.2, 37.0),
        (37.0, 37.3, 37.5, 37.5, 37.5, 37.6),
        (37.8, 37.9, 37.8, 37.9, 37.7, 37.9),
        (37.7, 37.7, 37.8, 37.9, 38.0, 38.0),
        (37.0, 36.5, 35.9, 35.7, 35.5, 35.5);
>>>>>>> 8f1964fac1db536b3bea2f4faa03d8db52803294
        
 -- Selecionar tabela  Temperatura
 
 SELECT * FROM Temperatura;

-- Select com concat
 SELECT concat('A temperatura do paciente esta em ', Temp25min, ' aos 25 minutos de cirurgia.') as Temperatura FROM Temperatura;
 
 -- Criar tabela Medico
 
 CREATE TABLE Funcionario (
 idMedico int primary key auto_increment,
 CRM char(6),
 CPF char(11),
 Nome varchar (120),
 Email varchar (120),
 Funcao varchar (40), 
 constraint chkFuncao check 
 (Funcao in ('Médico', 'Médica', 'Enfermeiro', 'Enfermeira'))
);
 
 -- Inserindo dados na tabela
 
INSERT INTO Funcionario (CRM, CPF, Nome, Email, Funcao) VALUES
	(276131, 49999973939,'Valdemir Santos','valdemir.santos@outlook.com','Enfermeiro'),
	(312312, 46007947025,'Max Medeiros','max.medeiros@outlook.com','Médico'),
	(789321, 15428451068,'Paulo Muzy','Paulo.Muzy@outlook.com','Médico'),
	(313645, 57295394010,'Roberta Silva','roberta.silva@outlook.com','Enfermeira'),
	(764533, 10153655070,'Sara Cristina','sara.cristina@outlook.com','Enfermeira'),
	(563454, 98180520056,'Guilherme Pereira','guilherme.pereira@outlook.com','Enfermeiro'),
	(456353, 85078946071,'Josemar Costa','josemar.costa@outlook.com','Médico'),
	(427351, 28877832037,'Flavia Sobreira','josemar.costa@outlook.com','Médica'),
	(890783, 31578361028,'Matheus Yoshida','matheus.yoshida@outlook.com','Médico'),
	(986421, 13871054003,'Karen Naomy','karen.naomy@outlook.com','Médica');
    
    

-- Selecionar tabela Medico
SELECT * FROM Funcionario;

 CREATE TABLE Cliente (
 idCliente int primary key auto_increment,
 CNPJ char(14),
 Nome varchar (120),
 Telefone char (11),
 Email varchar (120)
);

insert into cliente (cnpj, nome, telefone, email)
values
(31404808000168,'Fernando Duarte Brandão', 11993841210, 'fernando.brand@gmail.com.br'),
(59813354000106,'Jorge Moll Filho', 11944604385, 'jorge_molif@gmail.com.br'),
(96724115000106,'Dulce Pugliese de Godoy Bueno', 21967514907, 'dulcepug@gmail.com.br'),
(96724115000106,'Candido Pinheiro Koren de Lima', 13956785321, 'candido.pinheiro@gmail.com.br');

select * from cliente;