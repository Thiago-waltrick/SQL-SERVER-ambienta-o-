
use escolaDB
go
create table curso(
	id_curso int identity primary key,
	nome varchar (70)
	);

insert into curso (nome)
values ('sistemas'),('piscologia'),('medicina');

create table matricula(
	id_matricula  int identity primary key,
	curso_id int,
	aluno_id int,
	foreign key (curso_id) references curso (id_curso),
	foreign key (aluno_id) references aluno (id_aluno)
	);

insert into matricula (aluno_id,curso_id)
	values (1,1),(2,2),(3,3);

;
INSERT INTO aluno (nome, idade)
VALUES ('João', 20),
       ('Maria', 22),
       ('Carlos', 19),
       ('Karla', 89);

select a.nome as aluno, c.nome as curso 
from matricula m
join aluno a on a.id_aluno = m.aluno_id
join curso c on c.id_curso = m.curso_id;


select a.nome as aluno, c.nome as curso 
from aluno a
inner join matricula m on a.id_aluno = m.aluno_id
inner join curso c on c.id_curso = m.curso_id;

