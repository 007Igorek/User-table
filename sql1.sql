drop schema if exists netology

create schema netology

create table netology.PERSONS
(
    name           varchar(50) not null,
    surname        varchar(50) not null,
    age            int check ( age > 0 and age < 110),
    phone_number   varchar(12)  not null,
    city_of_living varchar(50),
    primary key (name, surname, age)
);

insert into netology.PERSONS(name, surname, age, phone_number, city_of_living)
values('Илья','Ильин',38,'89275555555','Воронеж') ,
      ('Иван','Иванов',17,'89053333333','Москва') ,
      ('Владимир','Владимиров',48,'89179999999','Ростов') ,
      ('Николай','Николаев',78,'89608888888','Москва') ;