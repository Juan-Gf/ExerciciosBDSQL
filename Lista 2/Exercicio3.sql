create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    primary key (ID)
);

insert into tb_categorias(Descrição) values
("Medicamento"), ("Utensilios"), ("Higiene"), ("Cuidados"), ("Outros");

create table tb_produtos(
	ID bigint auto_increment not null,
    Nome varchar(255) not null,
    Quantidade int,
    DataValidade date,
    Preço decimal(10,2) not null,
    CategoriaId bigint,
    
    primary key (ID),
    foreign key (CategoriaId) references tb_categorias(ID) 
);

select * from tb_categorias;

insert into tb_produtos (Nome, Quantidade, DataValidade, Preço, CategoriaId) values
("Rivotril",100, "2029-12-15", 160.00, 1),
("Dipirona",200, "2025-11-15", 8.00, 1),
("Pasta de Dente",100, "2022-10-10", 5.00, 3);

insert into tb_produtos (Nome, Quantidade, Preço, CategoriaId) values
("Esparadrapo",500, 13.00, 4),
("Escova",800, 7.00, 2),
("Alcool",500, 10.00, 2);

insert into tb_produtos (Nome, Quantidade, DataValidade, Preço, CategoriaId) values
("Colirio",300, "2030-08-15", 10.00, 1),
("Dorflex",300, "2030-08-08", 6.50, 1);

select * from tb_produtos;

select * from tb_produtos where Preço > 50.00;

select * from tb_produtos where Preço between 5.00 and 50.00;

select * from tb_produtos where Nome like "%c%";

select Nome, Quantidade, DataValidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID;

select Nome, Quantidade, DataValidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID and Descrição = "Medicamento";
