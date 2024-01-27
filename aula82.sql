use universidade_u;

delimiter $$
CREATE TRIGGER `tr_after_delete_funcionario`
AFTER DELETE ON `funcionario`
FOR EACH ROW
begin
	insert into funcionario_log(matricula, tipo_log, funcao_antiga, funcao_nova, telefone_antigo, telefone_novo))
	values(OLD.matricula, 'AD', OLD.funcao, null, OLD.telefone, null);
end
$$
delimiter ;

delete from funcionario where idfuncionario = 4;
select * from funcioario;
select * from funcioario_log;

show triggers;