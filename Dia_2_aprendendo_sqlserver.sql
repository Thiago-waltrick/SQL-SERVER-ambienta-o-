select * from aluno
where idade >30

select * from aluno 
where idade = 27 ;

select * from aluno
where idade <> 40 ;

select * from aluno
where idade between 30 and 50;

select * from aluno
where idade in (30,27);

select * from aluno
where nome like '%o';

select count (*) as total_aluno
from aluno;

SELECT 
  AVG(idade) AS media_idade,
  MAX(idade) AS maior_idade,
  MIN(idade) AS menor_idade
FROM aluno;

--exercicio
select * from aluno 
where idade < 40 ;

select * from aluno
where nome like '%o';

select count (*) as total_alunos
from aluno ;

select max (idade) as maior_idade
from aluno ;

select * from aluno 
where idade between 10 and 49 ;

select * from aluno  
where nome like '%a%';