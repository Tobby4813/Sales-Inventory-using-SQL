CREATE DATABASE sales_inventory_system;
USE sales_inventory_system;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) unique,
    phone VARCHAR(20),
    city VARCHAR(50)
);
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    supplier_id INT,
 FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)
);
 CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50),
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);

INSERT INTO customers
(customer_id, first_name, last_name, email, phone, city)
VALUES
(1,'John','Doe','john@gmail.com','08011111111','Lagos'),
(2,'Mary','James','mary@gmail.com','08011111112','Abuja'),
(3,'David','Paul','david@gmail.com','08011111113','Ibadan'),
(4,'Grace','Peter','grace@gmail.com','08011111114','Enugu'),
(5,'Daniel','Smith','daniel@gmail.com','08011111115','Lagos'),
(6,'Joy','Williams','joy@gmail.com','08011111116','Port Harcourt'),
(7,'Michael','Brown','michael@gmail.com','08011111117','Kano'),
(8,'Sarah','Johnson','sarah@gmail.com','08011111118','Benin'),
(9,'Samuel','King','samuel@gmail.com','08011111119','Owerri'),
(10,'Blessing','Mark','blessing@gmail.com','08011111120','Abeokuta'),
(11,'Esther','Daniel','esther@gmail.com','08011111121','Kaduna'),
(12,'Victor','Musa','victor@gmail.com','08011111122','Jos'),
(13,'Paul','Isaac','paul@gmail.com','08011111123','Ilorin'),
(14,'Mercy','Joseph','mercy@gmail.com','08011111124','Warri'),
(15,'Helen','Thomas','helen@gmail.com','08011111125','Uyo'),
(16,'Peter','Charles','peter@gmail.com','08011111126','Asaba'),
(17,'Ruth','Jacob','ruth@gmail.com','08011111127','Akure'),
(18,'Faith','Ola','faith@gmail.com','08011111128','Lokoja'),
(19,'Kingsley','Eze','kingsley@gmail.com','08011111129','Onitsha'),
(20,'Chioma','Okafor','chioma@gmail.com','08011111130','Awka');

INSERT INTO suppliers
(supplier_id, supplier_name, contact_email)
VALUES
(1,'Golden Suppliers','golden@gmail.com'),
(2,'Prime Distributors','prime@gmail.com'),
(3,'Mega Stores','mega@gmail.com'),
(4,'Elite Ventures','elite@gmail.com'),
(5,'Smart Hub','smart@gmail.com'),
(6,'Vision Traders','vision@gmail.com'),
(7,'Bright World','bright@gmail.com'),
(8,'Top Choice','top@gmail.com'),
(9,'Excel Supply','excel@gmail.com'),
(10,'Star Link','star@gmail.com');

INSERT INTO products
(product_id, product_name, category, price, supplier_id)
VALUES
(1,'Rice 5kg','Grains',25000,1),
(2,'Spaghetti','Pasta',3500,2),
(3,'Vegetable Oil 5L','Cooking Oil',18000,3),
(4,'Indomie Noodles Pack','Noodles',4500,2),
(5,'Corn Flakes','Breakfast',6500,4),
(6,'Milk Powder','Dairy',8500,1),
(7,'Sugar 1kg','Baking',2500,5),
(8,'Tomato Paste','Canned Food',1200,3),
(9,'Biscuits','Snacks',1500,4),
(10,'Fruit Juice','Beverages',2800,5),
(11, 'Bread', 'Bakery',1800,1),
(12,'Eggs Crate','Dairy',5500,2),
(13,'Frozen Chicken','Frozen Food',15000,3),
(14,'Beans 5kg','Grains',12000,4),
(15,'Yam Tubers','Vegetables',8000,5),
(16,'Salt500g','Seasoning',1000,1),
(17,'Milo500g','Beverages',4200,3),
(18,'TeaBags','Beverages',3000,3),
(19,'PeanutButter','Spreads',5000,4),
(20,'Soft Drinks Pack','Beverages',6000,5),
(21,'Custard Powder','Breakfast',3500,1),
(22,'Oats','Breakfast',4800,2),
(23,'Sardines','Canned Food',2200,3),
(24,'Mayonnaise','Spreads',4000,4),
(25,'Ketchup','Condiments',2500,5),
(26,'Plantain Chips','Snacks',1800,1),
(27,'Popcorn','Snacks',1500,2),
(28,'Bottled Water','Beverages',500,3),
(29,'Ice Cream','Frozen Food',3500,4),
(30,'Cheese','Dairy',7000,5);

INSERT INTO orders (order_id, customer_id, order_date)
VALUES
(1, 4, '2025-01-07'),
(2, 9, '2025-03-04'),
(3, 8, '2025-02-05'),
(4, 4, '2025-05-20'),
(5, 3, '2025-06-01'),
(6, 14, '2025-01-09'),
(7, 1, '2025-01-24'),
(8, 7, '2025-03-01'),
(9, 17, '2025-06-04'),
(10, 1, '2025-05-24'),
(11, 7, '2025-06-16'),
(12, 18, '2025-04-18'),
(13, 8, '2025-04-25'),
(14, 19, '2025-03-13'),
(15, 1, '2025-02-10'),
(16, 14, '2025-03-29'),
(17, 9, '2025-02-09'),
(18, 7, '2025-03-28'),
(19, 4, '2025-01-24'),
(20, 13, '2025-01-25'),
(21, 12, '2025-03-30'),
(22, 20, '2025-03-09'),
(23, 2, '2025-04-28'),
(24, 18, '2025-02-01'),
(25, 13, '2025-01-21'),
(26, 18, '2025-03-17'),
(27, 20, '2025-04-03'),
(28, 19, '2025-02-19'),
(29, 3, '2025-01-12'),
(30, 8, '2025-03-16'),
(31, 3, '2025-03-01'),
(32, 4, '2025-04-08'),
(33, 9, '2025-04-27'),
(34, 12, '2025-02-11'),
(35, 12, '2025-04-01'),
(36, 7, '2025-03-10'),
(37, 3, '2025-06-05'),
(38, 6, '2025-05-17'),
(39, 8, '2025-02-11'),
(40, 15, '2025-04-08'),
(41, 9, '2025-06-13'),
(42, 18, '2025-02-26'),
(43, 11, '2025-01-15'),
(44, 8, '2025-01-09'),
(45, 11, '2025-04-13');

INSERT INTO order_details (order_detail_id, order_id, product_id, quantity)
VALUES
(1,1,8,10),
(2,2,2,10),
(3,3,19,1),
(4,3,13,4),
(5,4,2,5),
(6,4,18,7),
(7,4,28,3),
(8,4,5,9),
(9,5,4,9),
(10,5,19,3),
(11,5,10,2),
(12,6,19,6),
(13,6,21,2),
(14,6,7,9),
(15,7,23,10),
(16,7,3,1),
(17,8,20,8),
(18,8,7,9),
(19,9,14,6),
(20,10,15,8),
(21,10,19,6),
(22,11,10,4),
(23,12,26,3),
(24,13,23,4),
(25,14,3,5),
(26,14,19,9),
(27,15,16,6),
(28,16,24,5),
(29,16,15,10),
(30,17,3,2),
(31,18,17,7),
(32,19,6,6),
(33,20,5,8),
(34,21,14,2),
(35,21,2,9),
(36,22,19,6),
(37,23,11,6),
(38,24,20,10),
(39,24,16,8),
(40,25,3,2),
(41,26,9,2),
(42,26,16,1),
(43,27,24,5),
(44,27,23,10),
(45,28,22,5),
(46,28,27,7),
(47,28,15,6),
(48,29,1,8),
(49,30,12,3),
(50,31,20,2),
(51,32,16,1),
(52,33,7,5),
(53,33,25,3),
(54,34,24,4),
(55,35,13,8),
(56,35,30,2),
(57,36,6,7),
(58,36,15,9),
(59,37,9,3),
(60,37,29,7),
(61,38,28,5),
(62,38,18,7),
(63,39,12,7),
(64,40,8,3),
(65,41,3,3),
(66,42,5,4),
(67,42,8,1),
(68,43,16,10),
(69,44,6,5),
(70,45,10,1);

INSERT INTO payments (payment_id, order_id, payment_date, amount, payment_method)
VALUES
(1,1,'2025-01-07',12000,'Card'),
(2,2,'2025-03-04',35000,'Card'),
(3,3,'2025-02-05',65000,'Bank Transfer'),
(4,4,'2025-05-20',98500,'Card'),
(5,5,'2025-06-01',61100,'Bank Transfer'),
(6,6,'2025-01-09',59500,'Bank Transfer'),
(7,7,'2025-01-24',40000,'Bank Transfer'),
(8,8,'2025-03-01',70500,'Bank Transfer'),
(9,9,'2025-06-04',72000,'Card'),
(10,10,'2025-05-24',94000,'Card'),
(11,11,'2025-06-16',11200,'Bank Transfer'),
(12,12,'2025-04-18',5400,'Card'),
(13,13,'2025-04-25',8800,'Bank Transfer'),
(14,14,'2025-03-13',135000,'Bank Transfer'),
(15,15,'2025-02-10',6000,'Bank Transfer'),
(16,16,'2025-03-29',100000,'Bank Transfer'),
(17,17,'2025-02-09',36000,'Card'),
(18,18,'2025-03-28',29400,'Card'),
(19,19,'2025-01-24',51000,'Bank Transfer'),
(20,20,'2025-01-25',52000,'Card'),
(21,21,'2025-03-30',55500,'Bank Transfer'),
(22,22,'2025-03-09',30000,'Bank Transfer'),
(23,23,'2025-04-28',10800,'Bank Transfer'),
(24,24,'2025-02-01',68000,'Card'),
(25,25,'2025-01-21',36000,'Bank Transfer'),
(26,26,'2025-03-17',4000,'Bank Transfer'),
(27,27,'2025-04-03',42000,'Bank Transfer'),
(28,28,'2025-02-19',82500,'Bank Transfer'),
(29,29,'2025-01-12',200000,'Bank Transfer'),
(30,30,'2025-03-16',16500,'Bank Transfer'),
(31,31,'2025-03-01',12000,'Bank Transfer'),
(32,32,'2025-04-08',1000,'Bank Transfer'),
(33,33,'2025-04-27',20000,'Card'),
(34,34,'2025-02-11',16000,'Card'),
(35,35,'2025-04-01',134000,'Bank Transfer'),
(36,36,'2025-03-10',131500,'Bank Transfer'),
(37,37,'2025-06-05',29000,'Bank Transfer'),
(38,38,'2025-05-17',23500,'Bank Transfer'),
(39,39,'2025-02-11',38500,'Card'),
(40,40,'2025-04-08',3600,'Card'),
(41,41,'2025-06-13',54000,'Bank Transfer'),
(42,42,'2025-02-26',27200,'Card'),
(43,43,'2025-01-15',10000,'Card'),
(44,44,'2025-01-09',42500,'Bank Transfer'),
(45,45,'2025-04-13',2800,'Bank Transfer');

SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT p.product_id, p.product_name, p.category, p.price, s.supplier_name
FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT 
    payment_date,
    SUM(amount) AS total_sales
FROM payments 
GROUP BY payment_date
ORDER BY payment_date;

select 
sum(amount) as Total_revenue
from payments;

-- list the top 5 best selling products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
Limit 5;

-- show customer who spent more than a specific amount
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
INNER JOIN payments p 
    ON o.order_id = p.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(p.amount) > 50000 
ORDER BY total_spent DESC;

-- Find the avg order value 
select avg(amount) as avg_order_value
from payments;

-- display products that has never bn sold
SELECT 
    p.product_id,
    p.product_name
    from products p
 left join order_details od on p.product_id = od.product_id
 where od.product_id is null;
 
 -- find customers who has never placed an oder
SELECT 
   c.customer_id,
   c.first_name,
   c.last_name
   from customers c
   left join orders o on c.customer_id = o.customer_id
   where o.order_id is null;
   
   -- show orders that contains more than 3 products
SELECT order_id, SUM(quantity) AS total_products
FROM order_details
GROUP BY order_id
HAVING SUM(quantity) > 3;

-- Find the product category with the highest revenue.
SELECT order_id, SUM(quantity) AS total_products
FROM order_details
GROUP BY order_id
HAVING SUM(quantity) > 3;

-- Find the supplier whose products sell the most.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(od.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;


SELECT 
    p.category,
    SUM(od.quantity * p.price) AS total_revenue
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;


SELECT 
    s.supplier_name,
    SUM(od.quantity * p.price) AS total_revenue
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
JOIN order_details od ON p.product_id =  od.product_id
GROUP BY s.supplier_id
ORDER BY total_revenue DESC
LIMIT 1;


-- Display customers who placed more than 5 orders.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 5
ORDER BY total_orders DESC;

-- Find orders with the highest total quantity of items.
SELECT
    order_id,
    SUM(quantity) AS total_quantity
FROM order_details
GROUP BY order_id
ORDER BY total_quantity DESC
LIMIT 1;

-- Show monthly sales performance.
SELECT MONTH(payment_date) AS month,
       SUM(amount) AS total_sales
FROM payments
GROUP BY MONTH(payment_date);

SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    SUM(od.quantity * p.price) AS total_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY sales_month;


SELECT
    MONTHNAME(o.order_date) AS sales_month,
    SUM(od.quantity * p.price) AS total_sales
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
JOIN products p on od.product_id = p.product_id
GROUP BY
    MONTH(o.order_date),
    MONTHNAME(o.order_date)
ORDER BY
    MONTH(o.order_date);
   
-- Find products with price above the average product price.
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- Find customers whose total spending is above the overall average spending.
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    SUM(od.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_details od
ON o.order_id = od.order_id
JOIN products p
ON od.product_id = p.product_id
GROUP BY c.customer_id,c.first_name,c.last_name
HAVING SUM(od.quantity * p.price) >
(
SELECT AVG(amount)
FROM payments
);

