use universidade_u;

SELECT * from endereco;

SELECT * from aluno;

select * from endereco where fk_idaluno = 1;

desc endereco;
/* Logico_1: */

CREATE TABLE ENDERECO (
    idendereco int auto_increment PRIMARY KEY,
    logradouro varchar(100),
    numero varchar(10),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado varchar(2),
    fk_idaluno int
);


ALTER TABLE ENDERECO ADD CONSTRAINT fk_aluno_endereco
    FOREIGN KEY (fk_idaluno)
    REFERENCES ALUNO (idaluno);


insert into endereco(logradouro,numero,complemento,bairro,cidade,estado,fkidaluno) 
SELECT logradouro, numero, complemento, bairro, cidade, estado ,idaluno
from aluno;

alter Table aluno DROP COLUMN logradouro;
alter Table aluno DROP COLUMN  numero;
alter Table aluno DROP COLUMN  complemento;
alter Table aluno DROP COLUMN  bairro;
alter Table aluno DROP COLUMN cidade;
alter Table aluno DROP COLUMN estado;

