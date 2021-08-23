create database if not exists cinema;
use cinema;

create table if not exists generos_pessoa(
                                             id int primary key auto_increment,
                                             genero varchar(100),
                                             status boolean default true
)ENGINE 'InnoDB';

create table if not exists atores(
                                     id int primary key auto_increment,
                                     name text,
                                     idade int,
                                     id_genero int references generos_pessoa (id),
    nacionalidade varchar(100)
    )ENGINE 'InnoDB';

create table if not exists genero_filme(
                                           id int primary key auto_increment,
                                           guid varchar(62) not null default UUID(),
    name varchar(100) unique,
    icone varchar(100)
    )ENGINE 'InnoDB';

create table if not exists filmes (
                                      id int primary key auto_increment,
                                      guid varchar(62) not null unique default UUID(),
    name varchar(100) not null,
    duracao float,
    sinopes text,
    diretor int not null references atores(id),
    classificacao int,
    estreia date
    )ENGINE 'InnoDB';

create table if not exists elenco(
                                     id int primary key auto_increment,
                                     filme int not null references filmes (id),
    ator int not null references atores(id)
    )ENGINE 'InnoDB';

create table if not exists salas(
                                    id int primary key auto_increment,
                                    numero int,
                                    ocupacao int not null,
                                    status boolean default true -- disponivel ou nao
)ENGINE 'InnoDB';

create table if not exists lista_ingressos(
                                              id int primary key auto_increment,
                                              valor float not null,
                                              categoria text,
                                              criado datetime default now()
    )ENGINE 'InnoDB';

create table if not exists cliente(
                                      id int primary key auto_increment,
                                      nome text,
                                      cpf varchar(10) unique,
    idade int,
    estudante boolean default false
    )ENGINE 'InnoDB';

create table if not exists bilhete(
                                      id int primary key auto_increment,
                                      bilhete int not null references lista_ingressos(id),
    posicao varchar(5), -- XY da sala
    client int not null references cliente(id)
    )ENGINE 'InnoDB';

create table if not exists exibicao(
                                       id int primary key auto_increment,
                                       filme int not null references filmes(id),
    sala int not null references salas(id),
    inicio datetime
    )ENGINE 'InnoDB';

create table if not exists ingresso(
                                       id int primary key auto_increment,
                                       exibicao int not null references exibicao(id),
    bilhete int not null references bilhete(id)
    )ENGINE 'InnoDB';