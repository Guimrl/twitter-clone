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