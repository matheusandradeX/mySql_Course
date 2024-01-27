/* Lógico_1: */
use universidade_u;

SELECT * from endereco;

SELECT * from aluno;


SELECT * from curso
;


CREATE TABLE CURSO (
    idcurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

insert into curso(descricao)
values('Curso Completo do Desenvolvedor NodeJS e MongoDB');


insert into curso(descricao)
values('Desenvolvedor Multiplataforma Android e IOS');


insert into curso(descricao)
values('Desenvolvimento Web Completo 2019');


insert into curso(descricao)
values('Desenvolvimento Web com Angular');




