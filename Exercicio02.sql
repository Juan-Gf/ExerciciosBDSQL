create database bd_e_commerce;

use bd_e_commerce;

create table tb_produtos(
	ID bigint auto_increment,
    Nome varchar(255) not null,
    Modelo varchar(255) not null,
    Cor varchar(255),
    Quantidade_Rodas int,
    Base varchar(255),
    Freio char,
    Preco decimal (10,2) not null,
    primary key (ID)
);

select * from tb_produtos;

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Inline", "Street 80", "Preto/Vermelho", 4, "Alumínio", "S", 985.00);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Fitness", "Fila Breeze", "Azul Turquesa", 4, "Polipropileno", 'S', 450.90);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Quad", "Riedell Dart", "Roxo", 4, "Nylon", 'S', 720.50);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Agressivo", "Carbon Free", "Cinza Claro", 2, "Flat", 'N', 1150.00);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Hockey", "Bauer Vapor", "Preto/Prata", 4, "Alumínio", 'N', 1499.90);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Tri-Skate", "Powerslide", "Verde Neon", 3, "Alumínio", 'S', 1280.00);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins Infantil", "Roller Star", "Rosa Shock", 4, "Plástico", 'S', 299.99);

insert into tb_produtos (Nome, Modelo, Cor, Quantidade_Rodas, Base, Freio, Preco)
values ("Patins de Velocidade", "Bont Jet", "Preto/Amarelo", 4, "Alumínio", 'N', 1950.00);

select * from tb_produtos where Preco > 500;

select * from tb_produtos where Preco < 500;

update tb_produtos set Cor = "Preto" where id in (1, 5, 8)