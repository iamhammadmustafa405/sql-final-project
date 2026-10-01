create table products (
product_id serial Primary Key,
name varchar(100) not null,
sku_code  char(8) unique not null,
price numeric(10,2) default 0 check (price >=0),
stock_quantity int default 0 check (stock_quantity >=0),
is_avialable boolean default True,
category text not null,
added_on date default current_date,
last_update timestamp default now()
);
INSERT INTO products (name, sku_code, price, stock_quantity, is_avialable, category)
VALUES
('Wireless Mouse', 'WM000001', 1200.50, 50, TRUE, 'Electronics'),
('Keyboard RGB', 'KB000002', 3500.00, 25, TRUE, 'Electronics'),
('Office Chair', 'CH000003', 8000.00, 10, TRUE, 'Furniture'),
('Study Table', 'TB000004', 6500.00, 8, TRUE, 'Furniture'),
('Water Bottle', 'WB000005', 300.00, 100, TRUE, 'Accessories'),
('Backpack', 'BP000006', 2000.00, 40, TRUE, 'Accessories'),
('USB Cable', 'UC000007', 250.00, 150, TRUE, 'Electronics'),
('Headphones', 'HP000008', 2800.00, 20, TRUE, 'Electronics'),
('Notebook Pack', 'NB000009', 500.00, 0, FALSE, 'Stationery'),
('Bluetooth Speaker', 'BS000010', 3000.00, 0, FALSE, 'Electronics');

select * from products;










