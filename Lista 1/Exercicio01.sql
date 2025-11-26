create database db_RH;

use db_RH;

create table tb_colaboradores (
	id bigint auto_increment,
    nome varchar(100) not null,
    cargo varchar(100) not null,
    departamento varchar(100) not null,
    salario decimal(6,2) not null,
    PRIMARY KEY (id)
);

select * from tb_colaboradores;

insert into tb_colaboradores(nome, cargo, departamento, salario)
values ("Juan", "Tecnico II", "TI", 2500.00);

insert into tb_colaboradores(nome, cargo, departamento, salario)
values ("Victor", "Gentente TI", "TI", 5500.00);

insert into tb_colaboradores(nome, cargo, departamento, salario)
values ("Paulo", "Asistente", "RH", 1500.00);

insert into tb_colaboradores(nome, cargo, departamento, salario)
values ("Mauro", "Cozinheiro", "Restaurante", 3060.00);

insert into tb_colaboradores(nome, cargo, departamento, salario)
values ("Tom", "Musico", "Restaurante", 1060.00);

select * from tb_colaboradores where salario > 2000.00;

select * from tb_colaboradores where salario < 2000.00;

update tb_colaboradores set salario = 9000.00 where id = 2;