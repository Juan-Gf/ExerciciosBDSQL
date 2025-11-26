create database bd_escola;

use bd_escola;

create table tb_alunos(
	ID bigint auto_increment,
    Nome varchar(100) not null,
    Idade int not null,
    Serie varchar(100) not null,
	Materia varchar(100) not null,
    Nota decimal(6,2),
    primary key (ID)
);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Ana", 15, "9º Ano", "Matematica", 8.50);
 
insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Carlos", 17, "3ª Série", "Historia", 9.25);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Gustavo", 16, "2ª Série", "Biologia", 2.90);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Fernanda", 10, "5º Ano", "Ciencias", 3.80);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Juliana", 8, "3º Ano", "Portugues", 9.50);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Lucas", 14, "8º Ano", "Geografia", 4.50);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Mariana", 18, "3ª Série", "Química", 8.00);

insert into tb_alunos(Nome, Idade, Serie, Materia, Nota)
values("Pedro", 11, "6º Ano", "Artes", 10.00);

select * from tb_alunos;

select * from tb_alunos where Nota > 7.00;

select * from tb_alunos where Nota < 7.00;

update tb_alunos set Nota = 5.65 where id in (4,5,9)

