CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount, Status) VALUES
(101, 1, '2024-02-10', 500.00, 'Completed'),
(102, 2, '2024-02-12', 750.00, 'Pending'),
(103, 3, '2024-02-15', 1200.00, 'Completed'),
(104, 4, '2024-02-18', 300.00, 'Canceled'),
(105, 1, '2024-02-20', 250.00, 'Completed'),
(106, 2, '2024-02-22', 900.00, 'Completed');


