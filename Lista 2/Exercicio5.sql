create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    primary key (ID)
);

insert into tb_categorias(Descrição) values
("Material"), ("Peças"), ("Ferramentas"), ("Proteção"), ("Maquinario");

create table tb_produtos(
	ID bigint auto_increment not null,
	Nome varchar(255) not null,
    CategoriaId bigint not null,
    Quantidade int,
    Preço decimal(10,2) not null,
   
    primary key (ID),
    foreign key (CategoriaId) references tb_categorias(ID) 
);

insert into tb_produtos(Nome, CategoriaId, Quantidade, Preço) values
("Cimento", 1, 300, 102.00),
("Areia", 1, 800, 80.00),
("Capacete", 4, 500, 50.00),
("Prego", 1, 2000, 13.00),
("Pedra", 1, 3000, 70.00),
("Trator", 5, 100, 5000.00),
("Furadeira", 3, 50, 200.00),
("Broca", 2, 450, 80.00);

select * from tb_produtos;

select * from tb_produtos where Preço > 100.00;

select * from tb_produtos where Preço between 70.00 and 150.00;

select * from tb_produtos where Nome like "%c%";

select Nome, Quantidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID;

select Nome, Quantidade, Preço, tb_categorias.Descrição
from tb_produtos inner join tb_categorias
on CategoriaId = tb_categorias.ID and Descrição = "Material";

