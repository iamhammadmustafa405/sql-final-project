create table product (
product_id INT Primary Key,
product_name varchar(100) NOT NULl,
category TEXT,
price NUMERIC(10,2),
stock_quantity INT,
is_available BOOLEAN,
added_on INT
)
Insert into product (product_id,product_name,category,price,stock_quantity,is_available,added_on)
values (101,'Wireless Mouse Speaker','Electronics',1611.53,79,false,2025-04-29),
(102,'Laptop Stand','Acessories',1211.73,45,true,2025-05-29),
(103,'Pen Set','Stationery',1048.79,123,true,2025-07-01),
(104,'Coffee Mug','Home & Kitchen',567.04,76,true,2025-07-23),
(105,'Yoga Mat','Fitness',756.90,76,false,2025-07-26)

select * from product
create table orders (

order_id INT Primary Key,
product_id INT,
quantity INT,
order_date DATE,
customer_name varchar(50),
payment_method varchar(50),
Constraint fk_product
Foreign Key (product_id)
References product(product_id)
ON DELETE CASCADE
)


