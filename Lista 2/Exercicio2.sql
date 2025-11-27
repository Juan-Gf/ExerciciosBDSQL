create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    primary key (ID)
);

insert into tb_categorias(Descrição) values
("Salgada"), ("Doce"), ("Vegana"), ("Brotinho"), ("Meio a Meio");

create table tb_pizzas(
	ID bigint auto_increment not null,
	Nome varchar(255) not null,
    CategoriaID bigint not null,
    Recheio varchar(255) not null,
    Borda varchar(255),
    Preço decimal(10,2) not null,
    
    primary key(ID),
    foreign key(CategoriaID) references tb_categorias(ID)   
);

drop table tb_pizzas; 

insert into tb_pizzas(Nome, CategoriaID, Recheio, Borda, Preço) values
("Calabeleza", 1, "Calabresa", "Sim", 45.55),
("Caipira", 3, "Chuchu", "Sim", 50.00),
("Morango X2", 2, "Morango", "Não", 60.00),
("Muito Queijo", 5, "4 Queijos", "Sim", 70.00 ),
("Frango", 1, "Frango Assado", "Não", 63.99),
("Mexicana", 3, "Pimenta", "Não", 55.90),
("Infantil", 4, "Rabanete", "Sim", 30.00),
("Italiana", 3, "Queijo c/ Tomate", "Sim", 65.00),
("Saladisssima", 3, "Alface / Tomate", "Sim", 49.90);

select * from tb_pizzas;

select * from tb_pizzas where Preço > 45.00;

select * from tb_pizzas  where Preço between 50.00 and 100.00;

select * from tb_pizzas where Nome like "%m%";

select Nome, tb_categorias.Descrição, Recheio, Borda, Preço
from tb_pizzas inner join tb_categorias
on CategoriaID = tb_categorias.ID;

select Nome, tb_categorias.Descrição, Recheio, Borda, Preço
from tb_pizzas inner join tb_categorias
on CategoriaID = tb_categorias.ID and Descrição = "Vegana";
