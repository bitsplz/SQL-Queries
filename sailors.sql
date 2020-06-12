-- to start SQLite3 (worked on my Mac and on CAEN)...
-- sqlite3 sailors.db

-- to run this file in SQLite3...
-- .read this_filename.sql

drop table if exists Sailors;
create table Sailors (
	sid integer primary key,
	name varchar(100),
	rating integer,
	age integer
);

drop table if exists Boats;
create table Boats (
	bid integer primary key,
	name varchar(100),
	color varchar(100)
);

drop table if exists Reserves;
create table Reserves (
	sid integer,
	bid integer,
	day integer, -- should be a date/datetime but...eh
	foreign key (sid) references Sailors (sid),
	foreign key (bid) references Boats (bid)
);

insert into Sailors (sid,name, rating, age) values (22,'Jack Sparrow', 10, 40);
insert into Sailors (sid,name, rating, age) values (23,'Will Turner', 6, 26);
insert into Sailors (sid,name, rating, age) values (24,'Elizabeth Swann', 7, 24);
insert into Sailors (sid,name, rating, age) values (25,'Mr. Gibbs', 9, 51);
insert into Sailors (sid,name, rating, age) values (26,'Davey Jones', 10, 420);

insert into Boats (bid,name, color) values (101,'Black Pearl', 'black');
insert into Boats (bid,name, color) values (102,'Queen Annes Revenge', 'brown');
insert into Boats (bid,name, color) values (103,'Blackbeards Delight', 'black');
insert into Boats (bid,name, color) values (104,'Redbeards Delight', 'red');
insert into Boats (bid,name, color) values (105,'Oceans Dagger', 'blue');

insert into Reserves (sid, bid, day) values (22, 101, 1);
insert into Reserves (sid, bid, day) values (22, 101, 2);
insert into Reserves (sid, bid, day) values (23, 101, 3);
insert into Reserves (sid, bid, day) values (23, 104, 4);
insert into Reserves (sid, bid, day) values (23, 102, 1);
insert into Reserves (sid, bid, day) values (23, 102, 2);
insert into Reserves (sid, bid, day) values (23, 102, 2);
insert into Reserves (sid, bid, day) values (25, 101, 1);
insert into Reserves (sid, bid, day) values (25, 102, 2);
insert into Reserves (sid, bid, day) values (25, 103, 3);
insert into Reserves (sid, bid, day) values (24, 104, 4);
insert into Reserves (sid, bid, day) values (24, 105, 5);
