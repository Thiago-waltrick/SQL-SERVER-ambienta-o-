create database escolaDB
go 

use escolaDB
go

create table aluno (
	id_aluno int IDENTITY PRIMARY key ,
	nome varchar (100),
	idade int 
	);

insert into aluno (nome,idade)
values ('pedro',30),('tilu',50),  ('gattino' ,27);

select * from aluno ; 

