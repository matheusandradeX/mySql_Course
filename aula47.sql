select * from disciplina as d left join professor as p on (d.fk_idprofessor = p.idprofessor)
UNION
select * from disciplina as d RIGHT join professor as p on (d.fk_idprofessor = p.idprofessor)
