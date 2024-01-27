use universidade_u;

#Recupera a data atual
select curdate();
select current_date();
#Recupera a data e hora atuais
SELECT now();

#Formantando datas 
select date_format (curdate(), '%d/%m/%Y') as data_formatada

/*
%d - dia do mês (de 01 até 31)
%D - dia do mês com sufixo em inglês
%m - mês (de 01 a 12)
%M - nome do mês em inglês
%y - ano (dois dígitos)
%Y - ano (quatro dígitos)
*/

/* extrair parte de data */
select extract (month from curdate());
/*day, month ou year */