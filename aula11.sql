SELECT * from aluno;

UPDATE aluno set cpf = '111.111.111-11' where nome = 'João';
UPDATE aluno set cpf = '222.222.222-22' where nome = 'Fernanda';
UPDATE aluno set cpf = '333.333.333-33' where nome = 'José';
UPDATE aluno set cpf = '444.444.444-44' where nome = 'Maria';
UPDATE aluno set cpf = '555.555.555-55' where nome = 'Marcelo';

desc aluno;
alter TABLE aluno DROP cpf;
ALTER table aluno add COLUMN cpf VARCHAR(14);

alter Table aluno MODIFY cpf VARCHAR(14) PRIMARY key;

ALter Table aluno add idaluno int PRIMARY KEY AUTO_INCREMENT;

ALTER Table aluno add logradouro varchar (100);
ALTER Table aluno add numero varchar (10);
ALTER Table aluno add complemento varchar (20);
ALTER Table aluno add bairro varchar (100);
ALTER Table aluno add cidade varchar (50);
ALTER Table aluno add estado char (2);



UPDATE aluno set 
logradouro = 'Rua João de Abreu',
numero = '650',
complemento = 'ap112',
bairro = 'Setor Oeste',
cidade ='Goiânia',
estado = 'GO'
WHERE idaluno = 4;

Rua Miramar, 1200, ap112 - Natal - RN

Marcelo

Rua João de Abreu, 650 - Goiânia - GO

alter Table aluno drop endereco;