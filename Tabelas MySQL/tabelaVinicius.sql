create database faculdade;
use faculdade;
create table Cadastro (
 cpf char (11) primary key,
 nome varchar(100),
 rg char(9),
 dtNasc date,
 email varchar(50),
 Plano varchar(40),
constraint chkPlano check (Plano in ('Bradesco', 'Medical Health', 'Amil', 'Prevent Senior', 'SUS', 'Porto Seguro', 'Nenhum'))); 
select* from Cadastro;
insert into Cadastro values ('39335998818', 'Vinicius Venancio Clozel de Jesus', '396643905', '2004-05-28', 'vinicius.jesus@sptech.school', 'Bradesco');
insert into Cadastro values ('12345678901', 'São Paulo Tech Scholl', '987654321', '0001-01-01', 'sptech.school@sptech.school', 'SUS');
insert into Cadastro values ('10987654321', 'Banco Safra', '123456789', '0003-05-03', 'bancosafra@safra.banco', 'Prevent Senior');