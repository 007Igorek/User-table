use netology2;

create table netology2.ORDERS
(
    id           int auto_increment,
    date         timestamp not null default now(),
    customer_id  int,
    product_name varchar(255) not null ,
    amount       int CHECK ( amount > 0 ) not null ,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

INSERT INTO ORDERS(customer_id, product_name, amount)
VALUES (1, 'tv', 50000),
       (2, 'computer', 80000),
       (3, 'phone', 45000);

