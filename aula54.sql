#declarar uma variavel que contenha o cpf de um aluno

set @cpf = '444.444.444-44';
select * from aluno;

#descobrir o id do aluno
set @iddoaluno = (select idaluno from aluno where cpf = '444.444.444-44');
select @iddoaluno;

#recuperar os registros de alunos

select * from telefone where fk_idaluno = @idoaluno;