DROP DATABASE IF EXISTS library;

#1. Prepare a database, create a database with the library name
CREATE DATABASE IF NOT EXISTS library
;

#2. use database library
USE library
;

#3. make a tabel
CREATE TABLE IF NOT EXISTS members(
	id int primary key auto_increment,
    name varchar(50) not null,
    city varchar(15) not null,
    age int not null,
    is_active tinyint not null
)
;

SHOW TABLES
;

#4. insert data into table members
-- code insert
INSERT INTO members(name, city, age, is_active) 
values
("Sana Huynh", "Ranzan","27",1),
("Luke Anderson", "Itoda","26",1),
( "Nawal Hodges", "Tokyo","30",0),
("Khadijah Williamson", "Osaka","28",0),
("Carla Proctor", "Osaka","27",1),
("Sadie Cuevas", "Nagoya","32",1),
("Cayson Busby", "Kyoto","26",0),
("Phyllis Richards", "Nara","29",1),
("Jordi Rudd", "Tokyo","31",1),
("Stacy Holcomb", "Tokyo","29",1)
;

-- see member table updates
select * from members
;

#5. Edit data
-- (update data "Sadie Cuevas" becomes: "tidak aktif (0)")
UPDATE members 
SET 
    is_active = 0
WHERE
    ID = 6
;

-- see member table updates
select * from members
;

#6. remove inactive members
-- code query to remove with conditions
DELETE FROM members
WHERE is_active = 0
;

-- see member table updates
select * from members
;
