USE sales;
INSERT INTO Customers (FirstName, LastName, Email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Peter', 'Jones', 'peter.jones@example.com');


INSERT INTO Products (ProductName, Category, Price, StockQuantity) VALUES
('Laptop', 'Electronics', 999.99, 50),
('T-Shirt', 'Apparel', 19.99, 200),
('Coffee Mug', 'Kitchenware', 8.50, 150);


INSERT INTO Orders (CustomerID, TotalAmount) VALUES
(1, 1019.98),
(2, 8.50);


INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal) VALUES
(1, 1, 1, 999.99),
(1, 2, 1, 19.99);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal) VALUES
(2, 3, 1, 8.50);
