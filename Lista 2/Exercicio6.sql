create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    primary key (ID)
);

insert into tb_categorias(Descrição) values
("Bacharelado"), ("Tecnivo"), ("Tecnologo"), ("Pós"), ("Licenciatura");

create table tb_cursos(
	ID bigint auto_increment not null,
	Nome varchar(255) not null,
    CategoriaId bigint not null,
    Duração_meses int,
    Mensalidade decimal(15,2) not null,
   
    primary key (ID),
    foreign key (CategoriaId) references tb_categorias(ID) 
);

insert into tb_cursos(Nome, CategoriaId, Duração_meses, Mensalidade) values
("ADS", 3, 36, 300.00),
("Medicina", 1, 60, 3000.00),
("Design", 2, 24, 250.00),
("Farmacia", 2, 24, 150.00),
("Historia", 5, 30, 450.00),
("Desenvolvimento IA", 4, 24, 3500.00),
("Fotografia", 1, 30, 350.90),
("Moda", 3, 24, 400.00);
	
select * from tb_cursos;

select * from tb_cursos where Mensalidade > 500.00;

select * from tb_cursos where Mensalidade between 600.00 and 1000.00;

select * from tb_cursos where Nome like "%j%";

select Nome, tb_categorias.Descrição, Duração_meses, Mensalidade
from tb_cursos inner join tb_categorias
on CategoriaId = tb_categorias.ID;

select Nome, tb_categorias.Descrição, Duração_meses, Mensalidade
from tb_cursos inner join tb_categorias
on CategoriaId = tb_categorias.ID and Descrição = "Tecnologo";

