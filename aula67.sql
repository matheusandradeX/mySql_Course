use universidade_u;

delimiter $$
create procedure proc_loop()
comment 'Exemplo de uso do loop'
begin

	declare z int default 1;
    declare resultado varchar(20);
	/*
		2x1 = 2
        2x2 = 4
        2x3 = 6
	*/

	loop_tabuada: loop
		
        set resultado = concat('2 x ', z, ' = ', (2*z)); /* 2 x 1 = 2 */
		
        insert into log(log)value(resultado);
        
        set z = z + 1;
		
		if z > 10 then
			leave loop_tabuada; 
		end if;
	
    end loop loop_tabuada;
    
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_loop;


select * from log;
truncate table log;

call proc_loop();

drop procedure universidade_u.proc_loop;
