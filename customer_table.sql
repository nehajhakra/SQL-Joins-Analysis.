-- Create Database
CREATE DATABASE CustomerDB;
USE CustomerDB;

-- Create Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone BIGINT
);

-- Insert Sample Data
INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone) 
VALUES
(1, 'Shubham', 'Thakur', 'India', 23, 9876543210),
(2, 'Aman', 'Chopra', 'Australia', 21, 8765432109),
(3, 'Naveen', 'Tulasi', 'Sri Lanka', 24, 7654321098),
(4, 'Aditya', 'Arpan', 'Austria', 21, 6543210987),
(5, 'Nishant', 'Jain', 'Spain', 22, 5432109876);
