use escoladb;
go

select idade, count(*) as quantidade
from aluno
group by idade
order by idade;

select left(nome, 1) as inicial, count(*) as total_professores
from professor
group by left(nome, 1)
order by inicial;

select sum(carga_horaria) as total_horas
from disciplina;

select nome, carga_horaria,
       (select avg(carga_horaria) from disciplina) as media_geral
from disciplina;

select c.nome as curso, count(m.aluno_id) as total_alunos
from matricula m
join curso c on c.id_curso = m.curso_id
group by c.nome
order by total_alunos desc;

select p.nome as professor, count(t.id_turma) as total_turmas
from turma t
left join professor p on p.id_professor = t.professor_id
group by p.nome
order by total_turmas desc;
