use universidade_u;

-- timestamp (marca temporal) início à partir da meia-noite do dia 01/01/1970

select TIMESTAMPDIFF (YEAR,'1989-01-06',curdate()) as idade

select data_nascimento, curdate() as data_atual, idade , 
TIMESTAMPDIFF(YEAR,data_nascimento, curdate()) as idade_dinamica from aluno;
