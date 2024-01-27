use universidade_u;

delimiter $$
create procedure proc_case()
comment 'Exemplo de uso do case'
begin

   declare data_teste date;
   
   set data_teste = curdate() + 500;
   
   /* sintaxe alternativa */
   case 
       when data_teste = curdate() then select curdate() as data_atual, data_teste, 'Presente';
	   when data_teste < curdate() then select curdate() as data_atual, data_teste, 'Passado';
	   when data_teste > curdate() then select curdate() as data_atual, data_teste, 'Futuro';
       else 
           select 'Nenhuma da anteriores';
   end case;
   
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_case;

call proc_case();
