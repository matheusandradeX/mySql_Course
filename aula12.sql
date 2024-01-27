use universidade_u;

desc aluno;

select * from aluno;

select * from telefone;
alter Table aluno MODIFY COLUMN telefone varchar(60);

update aluno set telefone = '11 5555-2222 11 3333-4444' WHERE idaluno = 1


/* Lógico_1: */

CREATE TABLE ALUNO (
    idade int,
    sexo char(1),
    endereco text,
    telefone varchar(20),
    nome varchar(25),
    valor_pago_curso float(10,2),
    ativo_sn int,
    data_inscricao_curso date,
    idaluno int auto_increment PRIMARY KEY,
    cpf varchar(14),
    email varchar(150),
    logradouro varchar(100),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2)
);

CREATE TABLE TELEFONE (
    idtelefone int auto_increment PRIMARY KEY,
    numero varchar(30),
    tipo char(3)
);

insert into telefone (numero,tipo) values('11 5555-2222', 'res');
insert into telefone (numero,tipo) values('11 3333-4444', 'com');

alter Table aluno drop COLUMN telefone;

alter Table telefone add COLUMN fk_idaluno int;


alter table telefone add constraint fk_aluno_telefone
    Foreign Key (fk_idaluno) REFERENCES aluno(idaluno)


/*
CREATE TABLE TELEFONE (
    idtelefone int auto_increment PRIMARY KEY,
    numero varchar(30),
    tipo char(3),
    fk_idaluno int,
    FOREIGN KEY (fk_idaluno) REFERENCES aluno (idaluno)
);

*/

insert into telefone(numero, tipo, fk_idaluno) VALUES('11 5555-9999','res',3);