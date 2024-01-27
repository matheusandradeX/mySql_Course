/*
UNION e UNION ALL - Unindo resultados

Utilizado para unir os resultados de consultas diferentes
Mesmo numero de colunas 
As colunas devem estpa na mesma ordem
As colunas dever ser do mesmo tipo (Dependento do banco de dados)

union - distinct
union - all - não

/* mesmo numero de colunas
select 100,500
union all select 100,300;
union ALL
select 500, 700;

*/



select 100,500
union all select 100,300;
union ALL
select 500,'uva', 700;

#enviar um e-mail para todos os alunos e professores
select email ,'aluno' from aluno where sexo = 'f'
UNION
select email, 'professor' from professor
order by email;
