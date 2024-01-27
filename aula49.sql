use universidade_u;

#Listar procedures do bd
show procedure status where Db = 'universidade_u';


#mostrar
show create procedure universidade_u.proc_oi;

CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_oi`()
BEGIN

select 'Oi, voce executou' as msg;
end


#Alteração

drop procedure universidade_u.proc_oi;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_oi`()
BEGIN

select 'Oi, eu fui modificada executou' as msg;
end
$$
DELIMITER ;

call proc_oi();