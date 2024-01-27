use universidade_u;

/* estados com mais alunos - alunos por estado*/
select estado, count(*) as total from endereco GROUP BY estado order by total desc limit 3;

/*Cursos Mais Vendidos*/
select fk_idcurso, count(*) as total from aluno_curso GROUP BY fk_idcurso;

SELECT * from aluno_curso;
