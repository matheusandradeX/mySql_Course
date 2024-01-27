-- Active: 1699848092684@@localhost@3306@universidade_u
/*
O que são Stored Procedures?

Procedimentos armazenados são pequenos programas armazenados no banco de dados que podem ser chamados
a qualquer momento

CREATE PROCEDURE <proc_nome> <parametros>
BEGIN

# bloco de código da procedure 

END 

CALL <proc_nome> <parametros)


delimiter $$
create procedure <nome_procedure> (<parametos)
BEGIN


selecty preco from produto;

end 
$$
delimiter ; ADD

CALL <nome_procedure (<parametros>)



*/


delimiter $$
create procedure proc_oi()
BEGIN

select 'Oi, voce executou' as msg;

end 
$$
delimiter ; 
CALL proc_oi()