use escolaDB;
go

insert into aluno (nome, idade)
values
('Ana', 22),
('Bruno', 25),
('Carla', 23),
('Daniel', 21),
('Eduarda', 24),
('Felipe', 26),
('Gabriela', 20),
('Henrique', 22),
('Isabela', 23),
('João', 24);

insert into curso (nome)
values
('Sistemas de Informação'),
('Psicologia'),
('Medicina'),
('Direito'),
('Engenharia');




select count (idade) as total_idade , idade
from aluno 
group by idade ;

select count (m.curso_id) as total_cursandos , c.nome
from curso c
join matricula m on m.curso_id = c.id_curso 
group by nome ;

select p.nome as professor , count (t.disciplina_id) as total_turmas
from professor p
join turma t on t.professor_id = p.id_professor
group by p.nome ;

select avg (carga_horaria) as média_carga_horaria from disciplina ;

select 
    max(carga_horaria) as maior_carga,
    min(carga_horaria) as menor_carga
from disciplina;

select  c.nome as curso , count (m.aluno_id) as total_alunos
from aluno a
join matricula m on m.aluno_id = a.id_aluno
join curso c on c.id_curso = m.curso_id
group by c.nome 
having count(m.aluno_id) > 6

;

select c.nome as curso, COUNT(m.aluno_id) as total_alunos,avg (a.idade) as media_idade
from aluno a 
join matricula m  on m.aluno_id = a.id_aluno
right join curso c on c.id_curso = m.curso_id
group by c.nome;

