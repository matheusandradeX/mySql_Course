/*
Declarando variáveis de escopo LOCALTIME
CREATE PROCEDURE 
BEGIN

#escopo local

END 

*/
delimiter $$
create procedure proc_variaveis_escopo_local1()
begin
    declare x int default 10;
    declare papagaio float(8,2);
    set papagaio = 20.45;
    set x = 'Jorge';
    SELECT x;
end
$$
DELIMITER ;