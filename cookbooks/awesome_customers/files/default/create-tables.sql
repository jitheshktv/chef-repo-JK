CREATE TABLE customers(
	id CHAR (32) NOT NULL,
	PRIMARY KEY(id),
	first_name VARCHAR(64),
	last_name VARCHAR(64),
	email VARCHAR(64)
);

INSERT INTO customers ( id, first_name, last_name, email ) VALUES ( uuid(), 'Nihara', 'Jithesh', 'Nihara.jithesh@gmail.com' );
INSERT INTO customers ( id, first_name, last_name, email ) VALUES ( uuid(), 'Nupura', 'Jithesh', 'Nupura.jithesh@gmail.com' );
