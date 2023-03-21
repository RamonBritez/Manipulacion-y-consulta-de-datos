--Micro desafío - Paso 1:

--1
insert into movies_db.genres (name, ranking, active)
	values ('investigación', '13', '1');
	
--2
update movies_db.genres
	set name = 'Investigación Científica'
	where name = 'Investigación'
	and id = 13;
	
--3
delete from movies_db.genres
where id = 13;

--4
select * from movies;

--5
select first_name as 'Nombre', last_name as 'Apellido', rating from actors;

--6
select title as Titulo from series;



--Micro desafío - Paso 2:

--1
select first_name as 'Nombre', last_name as 'Apellido', rating from actors
	where rating > '7,5';

--2
select title as titulo, rating, awards as premios from movies
	where rating > '7,5' and awards > 2;
	
--3
select title as titulo, rating from movies
	order by rating asc;


--Micro desafío - Paso 3:

--1
select title from movies
	limit 3;

--2
select id, title as 'nombre de pelicula', rating  from movies
	where rating > '7,5'
	limit 5;

--3
select id, title as 'nombre de pelicula', rating  from movies
	where rating > '7,5'
	limit 5
	offset 5;


--4
select * from actors
	limit 10
	offset 20;


--Micro desafio - paso 3:

--1
select title as 'Título', rating from movies
	where title like '%Harry Potter%';

--2
select * from actors
	where first_name like 'Sam%';

--3	
select title as 'Título', release_date from movies
	where release_date 
	between '2004-01-01' and '2008-12-12' order by release_date asc;
	
