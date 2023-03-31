create database hugeDB;

use hugeDB;

create table person (
	id int(9) not null auto_increment,
    nome varchar(30) not null,
    dia1 DATETIME ON UPDATE CURRENT_TIMESTAMP,
	dia2 DATETIME DEFAULT NOW(),
    primary key(id)
);

/*ALTER TABLE person DROP COLUMN dia1;*/
/*ALTER TABLE person ADD dia5 DATETIME DEFAULT NOW();*/

/*insert into person (nome) values 
("dan"), ("den"), ("din"), ("don"), ("dun")*/

insert into person (nome) values ("finally")