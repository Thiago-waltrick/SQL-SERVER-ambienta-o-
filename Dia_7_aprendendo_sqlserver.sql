use escolaDB;
go

insert into matricula (aluno_id, curso_id)
values 
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 1),
(6, 2),
(7, 3),
(8, 1),
(9, 2),
(10, 3),
(11, 1),
(12, 1),
(13, 2),
(14, 3),
(15, 2),
(16, 1),
(17, 3),
(18, 2),
(19, 1),
(20, 3);


select AVG (idade) as media_idade
from aluno;

select c.nome as curso, COUNT(m.aluno_id) as total_aluno
from matricula m
join curso c on c.id_curso = m.curso_id 
group by c.nome; 

select COUNT(m.aluno_id) as total_aluno
from matricula m;

select sum(carga_horaria) as total_horas
from disciplina ;

select avg(carga_horaria) as media_horas
from disciplina;

select p.nome as professor, count(t.id_turma) as total_turmas
from turma t
left join professor p on p.id_professor = t.professor_id
group by p.nome ;

select idade, count (*) as total_alunos
from aluno
group by idade;

