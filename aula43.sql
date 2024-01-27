show tables;

select * from aluno
select * from telefone


select * from aluno left JOIN telefone on (aluno.idaluno = telefone.fk_idaluno) where sexo = 'f'


select * from curso left join  disciplina on (curso.idcurso = disciplina.fk_idcurso)
left join professor on (disciplina.fk_idprofessor = professor.idprofessor) where idcurso = 1;