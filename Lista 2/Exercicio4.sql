create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    primary key (ID)
);

insert into tb_categorias(Descrição) values
("Bovina"), ("Suina"), ("Branca"), ("Exoticas"), ("Outros");

create table tb_produtos(
	ID bigint auto_increment not null,
	Nome varchar(255) not null,
    CategoriaId bigint not null,
    Quantidade int,
    Preço decimal(10,2) not null,
   
    primary key (ID),
    foreign key (CategoriaId) references tb_categorias(ID) 
);

insert into tb_produtos (Nome, CategoriaId, Quantidade, Preço) values
("Acem",1, 100, 59.00),
("Patinho",1, 250, 49.80),
("Picanha",2, 360, 65.90),
("Joelho",2, 450, 70.00),
("Salmão", 3, 505, 90.00),
("Atum", 3, 380, 25.00),
("Jacaré", 4, 180, 130.00),
("Cobra", 5, 80, 101.50); 

select * from tb_produtos;

select * from tb_produtos where Preço > 50.00;

select * from tb_produtos where Preço between 50.00 and 150.00;

select * from tb_produtos where Nome like "%c%";

select Nome, Quantidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID;

select Nome, Quantidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID and Descrição = "Bovina";

