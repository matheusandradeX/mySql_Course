select 
idcurso,
c.descricao as curso,
iddisciplina,
d.descricao as disciplina,
idprofessor,
nome as professor,
now()  as data_atual
from curso as c left join  disciplina as d  on (c.idcurso = d.fk_idcurso)
left join professor as p on (d.fk_idprofessor = p.idprofessor) where idcurso = 1;