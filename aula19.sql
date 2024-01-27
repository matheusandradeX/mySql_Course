alter table aluno add constraint uc_aluno_cpf unique(cpf);

select * from aluno;

insert into aluno