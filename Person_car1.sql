create table car_M(
	id INT not null primary key,
	car_model VARCHAR(50),
	Car_model_year VARCHAR(50),
	Car_make VARCHAR(50),
	Color VARCHAR(50),
	Price VARCHAR(50)
);




create table Person_M(
	Id bigint not null PRIMARY KEY,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	email VARCHAR(50),
	gender VARCHAR(10)not null,
	data_of_birth DATE not null,
	country_of_birth VARCHAR(50),
	phone_number VARCHAR(50),
    car_id int references car(_Mid),
    unique(car_id)
);



insert into Person_M (id,first_name, last_name, email, gender, data_of_birth, country_of_birth, phone_number) values ('Chrissie', 'Lage', 'clage0@behance.net', 'Female', '2022/10/21', 'Vietnam', '166-514-2461');
insert into Person_M (id,first_name, last_name, email, gender, data_of_birth, country_of_birth, phone_number) values ('Robenia', 'Bateman', 'rbateman1@ning.com', 'Female', '2022/04/15', 'Egypt', '537-249-0682');
insert into Person_M (id,first_name, last_name, email, gender, data_of_birth, country_of_birth, phone_number) values ('Elladine', 'Goldsby', 'egoldsby2@google.es', 'Female', '2022/05/22', 'Malaysia', '439-456-8756');
insert into Person_M (id,first_name, last_name, email, gender, data_of_birth, country_of_birth, phone_number) values ('Catharine', 'Kimmerling', 'ckimmerling3@disqus.com', 'Female', '2022/03/26', 'China', '707-714-5528');
insert into Person_M (id ,first_name, last_name, email, gender, data_of_birth, country_of_birth, phone_number) values ('Carlee', 'Fogden', 'cfogden4@google.com.br', 'Female', '2022/05/14', 'Thailand', '192-515-8675');


insert into car_M (id, car_model, Car_model_year, Car_make, Color, Price) values (1, 'Protege', 1996, 'Mazda', 'Goldenrod', '$0.29');
insert into car_M (id, car_model, Car_model_year, Car_make, Color, Price) values (2, 'MX-5', 2002, 'Mazda', 'Teal', '$8.36');
insert into car_M (id, car_model, Car_model_year, Car_make, Color, Price) values (3, 'Fusion', 2013, 'Ford', 'Goldenrod', '$8.80');
insert into car_M (id, car_model, Car_model_year, Car_make, Color, Price) values (4, 'Bonneville', 1988, 'Pontiac', 'Blue', '$8.86');