use universidade_u;

delimiter $$
create procedure proc_variaveis_escopo_parametro(param1 int, out param2 varchar(100))
begin
   select param1, param2;
   set param2 = 'Parametro 2 foi modificado e exportado pela procedure';
end
$$
delimiter ; 

show procedure status where Db = 'universidade_u';

set @param2 = 'Parâmetro 2';
select @param2;
call proc_variaveis_escopo_parametro(100, @param2);
select @param2
