
CREATE TABLE vorname (
  id serial primary key,
  nr int,
  vname varchar(40)
);

CREATE TABLE nachname (
  id serial primary key,
  nr int,
  nname varchar(60)
);

CREATE TABLE dates (
  id serial primary key,
  ds varchar(15)
);
/*
CREATE TABLE vornamen_sample (
sampleid serial primary key,
id int,
name varchar(60)
);

CREATE TABLE nachnamen_sample (
sampleid serial primary key,
id int,
name varchar(60)
);

CREATE TABLE dates_sample (
sample_id serial primary key,
date_str varchar(15)
);
*/

CREATE TABLE personen (
id serial primary key,
vorname varchar(40),
nachname varchar(60),
geburtstag varchar(15) 
);
/*
CREATE TABLE randomnumber (
	id serial primary key,
	rnd integer
);
*/
