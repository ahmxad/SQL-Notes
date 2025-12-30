-- (This activity comes after SALES database)

-- **LAB 2, LAB Activity 4**

-- **Creating EmployeesDB**
CREATE DATABASE EmployeesDB;
USE EmployeesDB;

-- Creating Emp schema
CREATE SCHEMA Emp;

-- Table
CREATE TABLE Emp.Employees_Info(
	Id INT NOT NULL PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NULL,
	Position VARCHAR(50) NULL,
	Salary DECIMAL(10,2) NULL
)

-- **LAB Activity 5**

-- Changing the name
ALTER DATABASE EmployeesDB
modify name=EmpDB

-- Transfering from one schema to another
CREATE SCHEMA Test

ALTER SCHEMA Test Transfer
Emp.Employees_Info

-- 1 > Adding Column
ALTER TABLE Test.Employees_Info
ADD department VARCHAR(30)

-- 2 > Droping Column
ALTER TABLE Test.Employees_Info
DROP COLUMN Address

-- Renaming a Column
ALTER TABLE Test.Employees_Info
ADD Location VARCHAR(30);

UPDATE Test.Employees_Info
SET Location = Address;

ALTER TABLE Test.Employees_Info
DROP COLUMN Address;

-- Changing a datatype
ALTER TABLE Test.Employees_Info
ALTER COLUMN Location CHAR(20)


-- LAB ACTIVITY 7 - Truncate the table

TRUNCATE TABLE Test.Employees_Info

-- LAB ACTIVITY 6 - Drop the table
DROP TABLE Test.Employees_Info

-- Drop Database
USE master
DROP DATABASE EmpDB