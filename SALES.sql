-- **LAB 2, STAGE a1, LAB Activity 1**

-- **Creating SALES DATABASE**

Create database SALES
USE SALES

-- **Create Schema**
Create Schema sales

-- **Creating 4 tables**
-- TABLE #1
CREATE TABLE sales.Customers(
	CustomerID INT,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Email NVARCHAR(100),
	Phone NVARCHAR(20),
	Address NVARCHAR(255),
	City NVARCHAR(50),
	Country NVARCHAR(50),
	CreatedAt DATETIME
)
-- TABLE #2
CREATE TABLE sales.Products(
	ProductID INT,
	ProductName NVARCHAR(100),
	Description NVARCHAR(255),
	Price DECIMAL(10,2),
	StockQuantity INT
)
-- TABLE #3
CREATE TABLE sales.Orders(
	OrderID INT,
	CustomerID INT,
	OrderDate DATETIME,
	TotalAmount Decimal(12,2),
	Status NVARCHAR(50)
)
-- TABLE #4
CREATE TABLE sales.OrderItems(
	OrderItemID INT,
	OrderID INT,
	ProductID INT,
	Quantity INT,
	UnitPrice Decimal(10,2)
)

-- **ALTERING SALES DATABASE, LAB Activity 2**

-- Change the name of the database.
ALTER DATABASE SALES
modify name=Test

-- Creating a temporary schema
CREATE SCHEMA Temp

-- 1 > Adding new column
ALTER TABLE sales.Customers
ADD DateOfBirth DATE

--2 > Changing Column data type
ALTER TABLE sales.Customers
ALTER COLUMN Phone NVARCHAR(10);

--3 > Adding new column  with a datatype
ALTER TABLE sales.Products
ADD Category NVARCHAR(50)

--4 > Changing column datatype
ALTER TABLE sales.Products
ALTER COLUMN Price DECIMAL(12,2)

--5 > Adding new Column
ALTER TABLE sales.Orders
ADD ShipDate DATETIME

--6 > Adding new column
ALTER TABLE sales.OrderItems
ADD Discount DECIMAL(5,2) DEFAULT 0;

--7 > Drop column
ALTER TABLE sales.OrderItems
DROP COLUMN UnitPrice;

-- **LAB Activity 3 -- Drop**


-- First checking what schemas do we have.
SELECT name AS sales
FROM sys.schemas

-- Removing all rows from the from the table
-- 1
TRUNCATE TABLE sales.Customers
DROP TABLE sales.Customers

-- 2
TRUNCATE TABLE sales.Products
DROP TABLE sales.Products

-- 3
TRUNCATE TABLE sales.Orders
DROP TABLE sales.Orders

-- 4
TRUNCATE TABLE sales.OrderItems
DROP TABLE sales.OrderItems

-- Droping schema and then database
DROP SCHEMA sales
USE master
DROP DATABASE SALES