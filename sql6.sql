use netology2;

select product_name
from netology2.CUSTOMERS A
         join netology2.ORDERS B
              on A.id = B.customer_id
where upper(A.name) = upper('alexey');