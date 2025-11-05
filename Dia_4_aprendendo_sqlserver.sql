--banco de dados base reformulado (re estruturei tudo pois me perdi)
use escoladb;
go

drop table if exists turma;
drop table if exists disciplina;
drop table if exists professor;
go

create table professor (
    id_professor int identity primary key,
    nome varchar(747),
    especialidade varchar(50)
);
go

create table disciplina (
    id_disciplina int identity primary key,
    nome varchar(70),
    carga_horaria int
);
go

create table turma (
    id_turma int identity primary key,
    nome varchar(89),
    professor_id int,
    disciplina_id int,
    foreign key (professor_id) references professor(id_professor),
    foreign key (disciplina_id) references disciplina(id_disciplina)
);
go

insert into professor (nome, especialidade)
values ('ana silva', 'matemática'),
       ('carlos pereira', 'programação'),
       ('beatriz ramos', 'psicologia');

insert into disciplina (nome, carga_horaria)
values ('cálculo i', 80),
       ('introdução à programação', 60),
       ('psicologia geral', 70);

insert into turma (nome, professor_id, disciplina_id)
values ('turma a', 1, 1),
       ('turma do degas', 2, 2),
       ('turma c', 3, 3),
       ('turma d',null , 2);
go

select t.nome as turma,
       p.nome as professor,
       d.nome as disciplina
from turma t
join professor p on t.professor_id = p.id_professor
join disciplina d on t.disciplina_id = d.id_disciplina;

update professor
set especialidade = 'estatistica'
where id_professor = 1;

update disciplina
set nome = 'banco de dados' , carga_horaria = 69
where id_disciplina = 2;

update professor
set nome = 'gatinno'
where id_professor = 2;

update disciplina
set carga_horaria = 90
where id_disciplina = 2;

delete turma
where professor_id is null;

select * from turma;
select * from disciplina;
select * from professor ;