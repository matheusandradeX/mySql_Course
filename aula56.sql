use universidade_u;

DELIMITER $$
create procedure proc_variaveis_escopo_local2()
BEGIN
    declare total_professores int;
    set total_professores =  (select count(*) from professor);
    select total_professores as teste;
END
$$
DELIMITER ;

show procedure status where Db = 'universidade_u';
drop universidade_U.proc_variaveis_escopo_local2;
call proc_variaveis_escopo_local2();


