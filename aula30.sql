use universidade_u;

select * from aluno;

alter table aluno modify column ativo_sn int default 1;


alter table aluno_curso modify column data_inscricao_curso datetime default current_timestamp;