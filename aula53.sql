#Declarando varíaveis do escopo da sessão

#Os nomes das variaveis são precedidos por @ADD#A instrução SET permite declarar variaveis e atribuir valores

use universidade_u;

set @x = 10;
set @y =15;

set @resultado = @x +@y;
set @Nome = 'Jorge';

select @x;

select @Nome as teste;

select @resultado as teste;


