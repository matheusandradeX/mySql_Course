use universidade_u;

select idaluno,data_inscricao_curso, valor_pago_curso from aluno;
select * from aluno_curso;
alter table aluno_curso add data_inscricao_curso date;
alter table aluno_curso add valor_pago_curso float(10,2);


-- Pegar os dados do aluno e cadastrar manuamente na tabela aluno_curso

-- Query de update com uma subquery para recuperar os dados

select idaluno, data_inscricao_curso, valor_pago_curso from aluno
where idaluno = 1;

update aluno_curso
set 
data_inscricao_curso = (select data_inscricao_curso from aluno where idaluno = 4),
valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 4)
where fk_idaluno = 4;