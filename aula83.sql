use universidade_u;

delimiter $$
CREATE TRIGGER `tr_before_update_funcionario` 
BEFORE UPDATE ON `funcionario` 
FOR EACH ROW 
begin
	insert into funcionario_log(matricula, tipo_log, funcao_antiga, funcao_nova, telefone_antigo, telefone_novo)
    values(OLD.matricula, 'BU', OLD.funcao, NEW.funcao, OLD.telefone, NEW.telefone);
end
$$
delimiter ;

select * from funcionario;
select * from funcionario_log where matricula = 5;

/*
	Técnico de informática
    11 3333-3333
*/

update 
	funcionario 
set 
	funcao = 'Diretor de TI', 
	telefone = '11 7777-9999'
where 
	idfuncionario = 5;
    
show triggers;
