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



