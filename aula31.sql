use universidade_u;

alter table aluno_curso drop column id_alunocurso;

select * from aluno_curso;

alter table aluno_curso add constraint pk_aluno_curso primary key(fk_idaluno, fk_idcurso, data_inscricao_curso);

SELECT @@sql_mode;

SET SESSION sql_mode='NO_AUTO_VALUE_ON_ZERO';

SET FOREIGN_KEY_CHECKS = 0;

/* DO WHAT YOU NEED HERE */

SET FOREIGN_KEY_CHECKS = 1;