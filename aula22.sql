use universidade_u;


select nome, count(*) from aluno GROUP BY nome;

select ativo_sn,count(*) from aluno GROUP BY ativo_sn;
