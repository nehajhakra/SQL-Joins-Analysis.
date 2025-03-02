-- 1. INNER JOIN – Matching Records from Both Tables
SELECT c.CustomerID, c.CustomerName, c.Country, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 2. LEFT JOIN – All Customers & Their Orders (Including Those Who Never Ordered)

SELECT c.CustomerID, c.CustomerName, c.Country, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 3. RIGHT JOIN – All Orders & Their Customers (Including Orders with Missing Customer Info)

SELECT c.CustomerID, c.CustomerName, c.Country, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 4. FULL JOIN – Everything from Both Tables (Not Always Available in MySQL)
SELECT c.CustomerID, c.CustomerName, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
FULL JOIN Orders o ON c.CustomerID = o.CustomerID;

-- FULL JOIN is Not Working in MySQL

SELECT c.CustomerID, c.CustomerName, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID

UNION

SELECT c.CustomerID, c.CustomerName, o.OrderID, o.OrderDate, o.Amount 
FROM Customer c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 5. SELF JOIN – When a Table Joins Itself

SELECT A.CustomerName AS Customer1, B.CustomerName AS Customer2, A.Country
FROM Customer A
JOIN Customer B ON A.Country = B.Country
WHERE A.CustomerID <> B.CustomerID;
