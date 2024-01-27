use universidade_u;

create table disciplina(
    iddisciplina int auto_increment PRIMARY KEY,
    descricao varchar(50) not null,
    carga_horaria int,
    codigo_professor varchar(50),
    nome_professor varchar(50),
    email_professor varchar(100),
    fk_idcurso int 
   
)

alter table disciplina add constraint fk_curso_disciplina
foreign key (fk_idcurso) references curso (idcurso);

desc disciplina;