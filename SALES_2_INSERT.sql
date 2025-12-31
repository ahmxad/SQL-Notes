-- LAB #3, After SALES database
-- **Using SALES DATABASE**

USE SALES;

-- **Inserting single records**
-- LAB Activity #1
-- New customer
INSERT INTO sales.Customers(CustomerID,FirstName,LastName, Email,
Phone, Address, City, Country, CreatedAt, DateOfBirth)
VALUES 
(701,'Areeba','Badar','areeba@gmail.com',0333777777,'XYZ', 'Lahore', 'Pak',
'20250312', '2015-03-09')

-- New Product
INSERT INTO sales.Products(ProductID, ProductName,Price,Description,
StockQuantity,Category)
VALUES 
(1002,'Soap',400, 'Capri', 300,'XYZ')

-- New order
INSERT INTO sales.Orders(OrderID, CustomerID,OrderDate, TotalAmount,
Status)
VALUES (501,702, '2025-05-28', 500,'Good')

-- OrderItem for the above product
INSERT INTO sales.OrderItems(OrderItemID, OrderID, ProductID, Quantity)
VALUES 
(901,501, 1003,35)


-- **Lab Activity 2**
-- Inserting into specified column

INSERT INTO sales.Customers(CustomerID, FirstName, Phone, City)
VALUES
(707, 'Ayesha', 66666666, 'Lahore')


---------------------------------------------
-- **LAB Activity #3**

-- Inserting Multiple customers
INSERT INTO sales.Customers
(CustomerID, FirstName, LastName, Email, Phone, 
Address, City, Country, CreatedAt, DateOfBirth)
VALUES 
(705,'Ali','Khan','ali@gmail.com',763653535,'UUU','Karachi', 'Pak',
'20250312', '2000-07-10'),
(706,'Faisal','Ahmed','FA@gmail.com',2222222,'tttt','Karachi', 'Pak', '20230310',
'2000-07-10')

-- Inserting Multiple products
INSERT INTO sales.Products(ProductID, ProductName,Price,Description,
StockQuantity, Category)
VALUES 
(1004,'Soap',50,'Rexona',280, 'XYZ'),
(1005,'shampo',100,'Dove',280, 'XYZ'),
(1006,'Oil',500,'Daber',280, 'XYZ'),
(1007,'Suger',150,'White',600, 'XYZ')

-- Inserting Multiple Orders
INSERT INTO sales.Orders(OrderID, CustomerID, OrderDate,
TotalAmount, Status)
VALUES 
(502, 702, '2025-05-28',5000,'Good'),
(503, 701, '2025-05-28',567,'Good'),
(504, 702, '2025-05-28',4599,'Bad'),
(505, 701, '2025-05-28',3333,'Poor'),
(506, 702, '2025-05-28',4589,'Good')

------------------------------------------

-- **LAB Activity #4**
-- **20 records into each table of SALES db**

-- sales.Customers
INSERT INTO sales.Customers
(CustomerID, FirstName, LastName, Email, Phone, Address, City, Country, CreatedAt, DateOfBirth)
VALUES
(1,'Ali','Khan','ali@gmail.com','0301111111','Street 1','Lahore','Pakistan','2024-01-01','1998-02-10'),
(2,'Ahmed','Raza','ahmed@gmail.com','0302222222','Street 2','Karachi','Pakistan','2024-01-02','1997-05-15'),
(3,'Sara','Iqbal','sara@gmail.com','0303333333','Street 3','Islamabad','Pakistan','2024-01-03','1999-07-21'),
(4,'Ayesha','Malik','ayesha@gmail.com','0304444444','Street 4','Lahore','Pakistan','2024-01-04','1996-09-12'),
(5,'Usman','Ali','usman@gmail.com','0305555555','Street 5','Faisalabad','Pakistan','2024-01-05','1995-11-30'),
(6,'Hamza','Sheikh','hamza@gmail.com','0306666666','Street 6','Multan','Pakistan','2024-01-06','1998-01-19'),
(7,'Zain','Butt','zain@gmail.com','0307777777','Street 7','Sialkot','Pakistan','2024-01-07','1997-03-25'),
(8,'Hina','Tariq','hina@gmail.com','0308888888','Street 8','Gujranwala','Pakistan','2024-01-08','2000-06-11'),
(9,'Bilal','Akram','bilal@gmail.com','0309999999','Street 9','Rawalpindi','Pakistan','2024-01-09','1996-08-08'),
(10,'Nida','Aslam','nida@gmail.com','0310000000','Street 10','Lahore','Pakistan','2024-01-10','1999-12-01'),
(11,'Farhan','Yousaf','farhan@gmail.com','0311111111','Street 11','Karachi','Pakistan','2024-01-11','1995-04-14'),
(12,'Saad','Qureshi','saad@gmail.com','0312222222','Street 12','Islamabad','Pakistan','2024-01-12','1997-10-22'),
(13,'Maria','Khan','maria@gmail.com','0313333333','Street 13','Lahore','Pakistan','2024-01-13','1998-06-17'),
(14,'Danish','Iqbal','danish@gmail.com','0314444444','Street 14','Peshawar','Pakistan','2024-01-14','1996-02-02'),
(15,'Hassan','Rauf','hassan@gmail.com','0315555555','Street 15','Quetta','Pakistan','2024-01-15','1999-09-09'),
(16,'Areeba','Saleem','areeba@gmail.com','0316666666','Street 16','Lahore','Pakistan','2024-01-16','2001-01-01'),
(17,'Shahzaib','Khalid','shahzaib@gmail.com','0317777777','Street 17','Karachi','Pakistan','2024-01-17','1998-05-05'),
(18,'Mehak','Noor','mehak@gmail.com','0318888888','Street 18','Islamabad','Pakistan','2024-01-18','2000-07-07'),
(19,'Talha','Aziz','talha@gmail.com','0319999999','Street 19','Lahore','Pakistan','2024-01-19','1997-03-03'),
(20,'Laiba','Hussain','laiba@gmail.com','0320000000','Street 20','Multan','Pakistan','2024-01-20','2002-11-11');

-- sales.Products
INSERT INTO sales.Products
(ProductID, ProductName, Description, Price, StockQuantity, Category)
VALUES
(1,'Laptop','Core i5 Laptop',120000,10,'Electronics'),
(2,'Mobile','Android Phone',60000,20,'Electronics'),
(3,'Keyboard','Mechanical Keyboard',5000,30,'Accessories'),
(4,'Mouse','Wireless Mouse',3000,25,'Accessories'),
(5,'Monitor','24 inch LED',45000,12,'Electronics'),
(6,'Printer','Laser Printer',35000,8,'Electronics'),
(7,'Tablet','10 inch Tablet',55000,15,'Electronics'),
(8,'Headphones','Bluetooth Headphones',8000,18,'Accessories'),
(9,'Speaker','Wireless Speaker',7000,22,'Accessories'),
(10,'Camera','Digital Camera',90000,6,'Electronics'),
(11,'USB','64GB USB',2000,40,'Accessories'),
(12,'Hard Disk','1TB HDD',12000,14,'Storage'),
(13,'SSD','512GB SSD',18000,10,'Storage'),
(14,'Router','WiFi Router',9000,16,'Networking'),
(15,'Power Bank','20000mAh',6500,19,'Accessories'),
(16,'Charger','Fast Charger',3500,28,'Accessories'),
(17,'Webcam','HD Webcam',7500,9,'Accessories'),
(18,'Smart Watch','Fitness Watch',15000,13,'Wearable'),
(19,'Microphone','USB Mic',11000,7,'Accessories'),
(20,'Projector','HD Projector',85000,5,'Electronics');

-- sales.Orders
INSERT INTO sales.Orders
(OrderID, CustomerID, OrderDate, TotalAmount, Status, ShipDate)
VALUES
(1,1,'2024-02-01',150000,'Shipped','2024-02-03'),
(2,2,'2024-02-02',60000,'Pending',NULL),
(3,3,'2024-02-03',5000,'Delivered','2024-02-05'),
(4,4,'2024-02-04',45000,'Shipped','2024-02-06'),
(5,5,'2024-02-05',35000,'Delivered','2024-02-07'),
(6,6,'2024-02-06',55000,'Pending',NULL),
(7,7,'2024-02-07',8000,'Delivered','2024-02-09'),
(8,8,'2024-02-08',7000,'Delivered','2024-02-10'),
(9,9,'2024-02-09',90000,'Shipped','2024-02-11'),
(10,10,'2024-02-10',2000,'Delivered','2024-02-12'),
(11,11,'2024-02-11',12000,'Pending',NULL),
(12,12,'2024-02-12',18000,'Delivered','2024-02-14'),
(13,13,'2024-02-13',9000,'Shipped','2024-02-15'),
(14,14,'2024-02-14',6500,'Delivered','2024-02-16'),
(15,15,'2024-02-15',3500,'Delivered','2024-02-17'),
(16,16,'2024-02-16',7500,'Pending',NULL),
(17,17,'2024-02-17',15000,'Delivered','2024-02-19'),
(18,18,'2024-02-18',11000,'Shipped','2024-02-20'),
(19,19,'2024-02-19',85000,'Pending',NULL),
(20,20,'2024-02-20',120000,'Delivered','2024-02-22');


-- sales.OrderItems
INSERT INTO sales.OrderItems
(OrderItemID, OrderID, ProductID, Quantity, Discount)
VALUES
(1,1,1,1,0),
(2,2,2,1,5),
(3,3,3,2,0),
(4,4,5,1,10),
(5,5,6,1,0),
(6,6,7,1,5),
(7,7,8,1,0),
(8,8,9,1,0),
(9,9,10,1,10),
(10,10,11,2,0),
(11,11,12,1,5),
(12,12,13,1,0),
(13,13,14,1,0),
(14,14,15,1,5),
(15,15,16,2,0),
(16,16,17,1,0),
(17,17,18,1,10),
(18,18,19,1,0),
(19,19,20,1,5),
(20,20,1,1,0);

-- LAB 3 - Activity 5 is in ACCOUNTS DATABASE

-- **LAB 3, Activity 6**

-- Updating Customer's email
UPDATE sales.Customers
SET Email='alice.johnson@example.com'
WHERE CustomerID=1

-- Update product stock after sale
UPDATE sales.Products
SET StockQuantity=1500
WHERE ProductID=5

-- Update orderItem quantity and price
UPDATE sales.OrderItems
SET Quantity=1001, UnitPrice=699.99
WHERE OrderItemID=6


-- ACTIVITY 7 - LAB #3

-- Updating multiple records

UPDATE sales.Customers
SET FirstName='Anwar'
Where LastName='Sheikh'
AND Address='XYZ'
AND City='Lahore'

-- ACTIVITY 8 - LAB #3

-- Delete an OrderItem
DELETE FROM sales.OrderItems
WHERE OrderItemID=15

-- Delete Product
DELETE FROM sales.Products
WHERE ProductID=10

