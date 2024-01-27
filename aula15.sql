SELECT * from aluno_curso;
DESC aluno_curso;

CREATE TABLE ALUNO_CURSO (
    id_alunocurso int PRIMARY KEY AUTO_INCREMENT,
    fk_idaluno int,
    fk_idcurso int
);
 

ALTER TABLE ALUNO_CURSO ADD CONSTRAINT fk_curso_aluno
    FOREIGN KEY (fk_idcurso)
    REFERENCES CURSO (idcurso);
 
ALTER TABLE ALUNO_CURSO ADD CONSTRAINT fk_aluno_curso
    FOREIGN KEY (fk_idaluno)
    REFERENCES ALUNO (idaluno);


alter Table aluno_curso drop COLUMN  id_alunocurso;

alter table aluno_curso add COLUMN id_alunocurso int PRIMARY KEY AUTO_INCREMENT;