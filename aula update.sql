use universidade_u;
/*mostra os atributos da tabela  */
desc aluno;
/*add inclusão*/
alter table aluno add cpf varchar(11);

alter table aluno add email varchar(150) after idade;

/*modify modificar */
alter table aluno MODIFY COLUMN cpf varchar(14) after email;


/*drop remover */
alter Table aluno drop column cpf;

