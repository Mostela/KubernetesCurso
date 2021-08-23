insert into generos_pessoa (genero)
values ('Masculino'), ('Feminino'), ('Outros'), ('Nao Informado'), ('Nao Binario');

insert into atores (name, idade, id_genero, nacionalidade)
values ('Margot Robbie', 31, 2, 'EUA'), ('Will Smith', 51, 1, 'EUA'),
       ('Wagner Moura', 45, 1, 'BR'), ('Pedro Pascal', '46', 1, 'CHILE'),
       ('Jose Padilha', 54, 3, 'BR');


insert into genero_filme (name, icone)
values ('açao', 'acao.png'), ('aventura', 'aventura.png'),
       ('comedia', 'comedia.png'), ('romance', 'romance.png');

insert into filmes (name, duracao, sinopes, diretor, classificacao, estreia)
values ('Tropa de Elite', 120, 'Filme Policia do Rio de Janeiro', 5, 18, '2005-08-19'),
       ('Esquadrao Suicida', 120, 'Filme De Viloes', 1, 0, '2016-09-10'),
       ('Golpe De Mestre', 90, 'Mulher aprende a dar golpes', 2, 10, now()),
       ('Operaçao Fronteira', 180, 'Os caras roubam do trafico', 5, 16, '2018-02-20');

insert into elenco (filme, ator)
values (1, 3), (2, 1), (2, 2), (3, 1), (3, 2), (4, 4);

insert into salas (numero, ocupacao)
VALUES (1, 100), (2, 100), (3, 65), (3, 65), (4, 65);

insert into lista_ingressos (valor, categoria)
VALUES (35.00, 'Inteira'), (18.00, 'Meia'),
       (16.00,'Matine'), (16.00, 'Funcionario');

insert into cliente (nome, cpf, idade, estudante)
VALUES ('Maria', 123, 19, true), ('Jose', 234, 47, false),
       ('Ana', 852, 32, false), ('Paulo', 857, 22, true),
       ('Joao', 987, 14, false), ('Luiz', 466, 12, false);

insert into bilhete (bilhete, posicao, client)
VALUES (1, 'A1', 1),(4, 'P7', 2),
       (3, 'G5', 2),(4, 'G8', 2),
       (3, 'J10', 6),(1, 'H7', 3),
       (2, 'F4', 3);

insert into exibicao (filme, sala, inicio)
VALUES (1, 1, now()), (2, 2, now() - INTERVAL 5 DAY),
       (1, 1, now() - INTERVAL 2 DAY), (3, 2, now()),
       (4, 1, now() - INTERVAL 7 DAY), (4, 2, now() - INTERVAL 2 DAY);

insert into ingresso (exibicao, bilhete)
VALUES (1, 6),(3,4),
       (4, 4),(4,4),
       (2, 7),(5, 6),
       (5, 1),(5, 2),
       (2, 2),(4, 3),
       (1, 1);

