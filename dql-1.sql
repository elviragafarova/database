CREATE TABLE movie (
    id Integer generated always as identity,
    name VARCHAR(100),
    genre VARCHAR(50),
    reiting NUMERIC(3, 1),
    duration INTEGER,
    release_year INTEGER
);

INSERT INTO movie (name, genre, reiting, duration, release_year)
VALUES
    ('Titanic', 'Romance', 7.9, 195, 1997),
    ('Red Notice', 'Action', 6.3, 118, 2021),
    ('The Notebook', 'Romance', 7.8, 123, 2004),
    ('The Green Mile', 'Drama', 8.6, 189, 1999),
	('La La Land', 'Romance', 8.0, 128, 2016);

INSERT INTO movie (name, genre, reiting, duration, release_year)
VALUES ('Toy Story', 'Animation', 8.3, 81, 1995);

-- task 1
select * from movie;
select name, reiting from movie;

--task 2
select * from movie where genre = 'Drama';
select * from movie where reiting > 8;
select * from movie where release_year > 2020;

--task 3
select * from movie order by reiting;
select * from movie order by reiting desc;
select * from movie order by name;

--task 4
select name from movie order by reiting desc limit 3;
select * from movie where duration < 120 AND reiting > 7;
select * from movie where genre in('Drama','Romance', 'Action');





