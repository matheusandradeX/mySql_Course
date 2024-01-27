use universidade_u;
select * from aluno;

/*count*/
SELECT count(*) from aluno;

SELECT count(DISTINCT nome) from aluno;

/*max*/
select max (valor_pago_curso) from aluno;
select max (valor_pago_curso) from aluno where idade <35;
/*min*/
SELECT min(valor_pago_curso) from aluno;
/*avg*/
select avg(valor_pago_curso) from aluno;
/*sum*/
select sum (valor_pago_curso) from aluno;