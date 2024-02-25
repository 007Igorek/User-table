create schema netology2;
use netology2;

create table netology2.CUSTOMERS
(
    id           int auto_increment,
    name         varchar(50) not null ,
    surname      varchar(50) not null ,
    age          int CHECK ( age > 0 AND age < 121),
    phone_number char(15)    not null ,
    PRIMARY KEY (id)
);

INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Ivan', 'Ivanov', 20, '8(905)555-55-55'),
       ('Oleg', 'Olegov', 50, '8(917)917-17-17'),
       ('Alexey', 'Filatov', 40, '8(989)989-89-89');


