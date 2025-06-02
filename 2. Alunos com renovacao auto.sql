use edumanager;

select m.*, a.* from matriculas m
join alunos a on m.id_aluno = a.id where m.renovacao_automatica = 1; 
