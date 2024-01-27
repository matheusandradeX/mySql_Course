use universidade_u;

delimiter $$
create procedure proc_repeat()
comment 'Exemplo de uso do repeat'
begin

	declare z int default 1;
    declare resultado varchar(20);
	/*
		2x1 = 2
        2x2 = 4
        2x3 = 6
	*/

	repeat 
		
        set resultado = concat('2 x ', z, ' = ', (2*z)); /* 2 x 1 = 2 */
		
        insert into log(log)value(resultado);
        
        set z = z + 1;
		
    until z > 10 end repeat;
    
end
$$
delimiter ;

show procedure status where Db = 'universidade_u';
drop procedure universidade_u.proc_loop;


select * from log;
truncate table log;

call proc_repeat();

drop procedure universidade_u.proc_repeat;