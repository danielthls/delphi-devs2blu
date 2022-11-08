USE sakila;
-- SELECT * from address where district = 'buenos aires';
-- Seleciona dados de address em que a cidade não seja California
-- SELECT * from address where district != 'california';

-- Seleciona nomes que começam com A
-- SELECT * FROM actor where first_name like 'A%';

-- Seleciona último nome que seja Cage
-- SELECT * FROM actor where last_name like 'cage';

-- SELECT * from address where phone like '7058%';

-- Seleciona telefone que o segundo dígito seja 6
-- SELECT * from address where phone like '_6%';

-- Conta quantos itens tem na tabela address;
-- SELECT COUNT(1) AS CONTADOR FROM ADDRESS;

-- Seleciona cidades sem repetir nenhum nome
-- select distinct(district) from address;

-- Seleciona IDs entre 150 e 170
-- select * from film where film_id between 150 and 170;

-- Ordena resultados em ordem crescente
-- select * from actor order by first_name asc;

-- Ordena resultados em ordem decrescente
-- select * from actor order by first_name desc;

-- Seleciona os x primeiros itens a party do índice y (limit y,x)
-- SELECT * FROM address where district = 'buenos aires' order by address_id limit 0,5;

-- SELECT max(address_id) FROM address;
-- SELECT min(address_id) FROM address;
-- SELECT avg(address_id) FROM address;


-- update actor set last_update = '2022-10-28 18:26';

 INSERT into ACTOR (first_name, last_name, last_update)
	 values('Brad', 'Fulano', '2022-10-28 18:26');

 insert INTO actor VALUES ('301','Brad','Fulano', '2022-10-28 18:26');

 insert into actor (first_name, last_name, last_update)
	 select 'ARMANDO', last_name, last_update from actor where actor_id = 300;



select * from actor;