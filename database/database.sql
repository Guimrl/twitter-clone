-- copie e cole as querys abaixo na sua ferramenta de administraçao
-- de banco de dados favorita! Eu utilizei o phpmyadmin.

create database twitter-clone;

use twitter-clone;

create table usuarios(
	id int not null primary key AUTO_INCREMENT,
	nome varchar(100) not null,
	email varchar(150) not null,
	senha varchar(32) not null
);

create table tweets(
    id int not null PRIMARY KEY AUTO_INCREMENT,
    id_usuario int not null,
    tweet varchar(300) not null,
    data datetime default CURRENT_TIMESTAMP
);

create table usuarios_seguidores(
    id int not null primary key AUTO_INCREMENT,
    id_usuario int not null,
    id_usuario_seguindo int not null
);
insert into usuarios(id, nome, email, senha)values(30, 'Teste', 'teste@teste.com', '81dc9bdb52d04dc20036dbd8313ed055');

insert into usuarios (id, nome)values
(1, 'Guilherme Amaral'),
(2,'Elon Musk'),
(3,'Cristiano Ronaldo'), 
(4,'Gran Toro'), 
(5,'Scalene'),
(10,'Fernanda'),
(15,'Ton'),
(20,'Mark Zuckerberg');

insert into tweets (id_usuario, tweet)values
(4, 'Siga @grantorobanda no instagram!'),
(2,'Founder, CEO and Technical Director of SpaceX; CEO of Tesla, Inc.; vice president of OpenAI, 
founder and CEO of Neuralink; co-founder, president of SolarCity and owner of Twitter.'),
(2, 'I will not sue guilherme amaral!'),
(15,'Front man da Gran Toro'),
(1, 'Entre em contato comigo através do meu email! gui.amaral123@outlook.com'),
(1,'Eu criei uma conta no github  github.com/Guimrl/');

insert into usuarios_seguidores(id_usuario, id_usuario_seguindo)value(30,1),(30,2),(30,3),(30,4),(30,5),(30,10),(30,15),(30,20);