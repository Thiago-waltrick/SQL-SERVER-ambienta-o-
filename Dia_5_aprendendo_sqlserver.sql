use escolaDB
go

insert into professor (nome, especialidade)
values 
('joão mendes', 'banco de dados'),
('lara souza', 'português'),
('felipe alves', 'redes de computadores'),
('marina costa', 'inteligência artificial'),
('ricardo fonseca', 'estatística'),
('juliana pinto', 'sociologia'),
('paulo rocha', 'engenharia de software');
go

insert into disciplina (nome, carga_horaria)
values 
('banco de dados', 90),
('português técnico', 50),
('redes de computadores', 100),
('inteligência artificial', 120),
('estatística aplicada', 75),
('sociologia e tecnologia', 65),
('engenharia de software', 110);
go

insert into turma (nome, professor_id, disciplina_id)
values 
('turma d', 4, 4),
('turma e', 5, 5),
('turma f', 6, 6),
('turma g', 7, 7),
('turma h', 8, 8),
('turma i', 9, 9),
('turma j', 10, 10),
('turma k', null, 4);
go

select * from professor
order by nome asc;

select * from professor
order by nome desc;

select top 3 * from  disciplina ;

select distinct especialidade
from professor ;

select * from professor
where nome like 'a%';

select * from professor
where nome like '%a';

select * from professor
where nome like '%sil%';

select * from  professor
order by nome desc;

select * from disciplina
where carga_horaria > (select avg (carga_horaria) from disciplina);

select * from turma
where professor_id is null;

select nome from professor
where nome like '%a%';

select distinct nome, carga_horaria from disciplina
where carga_horaria in ((select max (carga_horaria) from disciplina),(select min (carga_horaria) from disciplina));