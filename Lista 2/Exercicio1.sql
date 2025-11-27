create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	ID bigint auto_increment not null,
    Descrição varchar(255) not null,
    
    primary key(ID)
);

create table tb_personagens(
	ID bigint auto_increment not null,
    Nome varchar(255) not null,
    ClasseID bigint not null,
    Arma varchar(255) not null,
    Ataque int not null,
    Defesa int not null,
    Saude int not null,
    
    primary key (ID),
    foreign key (ClasseID) references tb_classes(ID)
);

insert into tb_classes(Descrição) values
("Mago"), ("Guerreiro"), ("Ladino"), ("Druida"), ("Paladino");

select * from tb_classes;

insert into tb_personagens(Nome, ClasseID, Arma, Ataque, Saude, Defesa) values
("Ronan", 2, "Espada", 3000, 5000, 6000),
("Arme", 1, "Cajado", 3500, 1500, 1500),
("Dio", 3, "Foice", 5000, 2000, 1000),
("Lupus", 3, "Facas", 4000, 2500, 1000),
("Ryan", 4, "Machado", 2000, 4500, 3000),
("Elesis", 2, "Katana", 4500, 3500, 4000),
("Luck", 5, "Bastao", 2000, 3500, 2300),
("Kilic", 5, "Flauta", 1500, 2500, 1900);

select * from tb_personagens;

select * from tb_personagens where Ataque > 2000;

select * from tb_personagens where Defesa between 1000 and 2000;

select * from tb_personagens where Nome like "%c%";

select Nome, tb_classes.Descrição, Arma, Ataque, Saude, Defesa 
from tb_personagens inner join tb_classes 
on tb_personagens.ClasseID = tb_classes.ID;

select Nome, tb_classes.Descrição, Arma, Ataque, Saude, Defesa 
from tb_personagens inner join tb_classes 
on tb_personagens.ClasseID = tb_classes.ID and Descrição = "Guerreiro";

