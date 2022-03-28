create database chamenos_test;
use chamenos_test;

/*User Table*/
create table log_in (
	id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    pnumber VARCHAR(255) NOT NULL,
    age int NOT NULL,
    PRIMARY KEY (id)
);

/*Admin Table*/
create table adminlog (
	uname VARCHAR (255),
    pass VARCHAR (255)
);


/*Political Tables*/
CREATE TABLE president (
	president VARCHAR (255),
	total int
    );
    
CREATE TABLE vp (
	vp VARCHAR (255),
    total int
    );


/*Pop Table*/
CREATE TABLE spiderman (
	spiderman VARCHAR (255),
    total int
    );
    
CREATE TABLE singer (
	singer VARCHAR (255),
    total int
    );
    
CREATE TABLE bband (
	bband VARCHAR (255),
    total int
    );
    
CREATE TABLE tv (
	tv VARCHAR (255),
    total int
    );
    
CREATE TABLE bond (
	bond VARCHAR (255),
    total int
    );


/*Manual Insert*/
insert into adminlog values(
'Tarikuzuma','iLoveCats'
);

insert into adminlog values(
'eunice','125', '16'
);

insert into president (president, total) values
('Abella','0'),
('Leody', '0'),
('Isko','0'),
('Norberto','0'),
('Lacson','0'),
('Mangondato','0'),
('Marcos','0'),
('Montemayor','0'),
('Pacquiao','0'),
('Leni','0');

insert into vp (vp, total) values
('Atienza','0'),
('Bello', '0'),
('David','0'),
('Duterte','0'),
('Lopez','0'),
('Ong','0'),
('Pangilinan','0'),
('Serapio','0'),
('Atienza','0');

insert into spiderman (spiderman, total) values
('Tom', '0'),
('Tobey', '0'),
('Andrew', '0');

insert into singer (singer, total) values
('Ariana', '0'),
('Doja', '0'),
('Taylor', '0');

insert into bband (bband, total) values
('BTS', '0'),
('SEVENTEEN', '0'),
('EXO', '0');

insert into tv (tv, total) values
('Falls', '0'),
('Star', '0'),
('Adventure', '0');

insert into bond (bond, total) values
('Idris', '0'),
('Hardy', '0'),
('Hiddlestone', '0');

/*Drop Delete Select*/
drop table log_in;
DELETE FROM log_in WHERE id = 3;
SELECT * FROM log_in;
SELECT * FROM adminlog;

/*Select Political*/
SELECT * FROM president;
SELECT * FROM vp;

/*Select Pop*/

/*Setters*/
set @intValue:=1;
SET SQL_SAFE_UPDATES = 0;

/*Manual Update For Testing*/
UPDATE vp SET total = total + 1 
WHERE vp = 'Ong'; /*Sweet Spot!*/

/*Manual Data Finding*/
SELECT * FROM log_in WHERE 
email ='edwinjrgumba@gmail.com'
AND pnumber = '09561894227';

select *from log_in where email='edwinjrgumba@gmail.com'
 and pnumber = '09561894227';