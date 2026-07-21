-- 1. Display all customers along with their order.
SELECT 
    *
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;
-------------------------------------------------------------------
-- 2. Display each order with it's payment details.
SELECT 
    o.OrderID,
    p.PaymentID,
    p.PaymentDate,
    p.Amount,
    p.PaymentMethod
FROM Orders o
INNER JOIN Payments p
ON o.OrderID = p.OrderID;
-------------------------------------------------------------------
-- 3. Show all products with their categories.
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryName
FROM Products p 
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;
-------------------------------------------------------------------
-- 4. Show all products with their suppliers.
SELECT 
    p.ProductID,
    p.ProductName,
    s.SupplierID,
    s.SupplierName
FROM Products p
INNER JOIN Suppliers s
ON p.SupplierID = s.SupplierID;
-------------------------------------------------------------------
-- 5. Display each order with the employee who handled it.
SELECT 
    o.OrderID,
    e.*
FROM Orders o
INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID;
-------------------------------------------------------------------
-- 6. Display each order with its shipping company.
SELECT 
    o.OrderID,
    s.CompanyName
FROM Orders o
INNER JOIN Shippers s
ON o.ShipperID = s.ShipperID;
-------------------------------------------------------------------
-- 7. Show products available in every warehouse.
SELECT 
    p.ProductID,
    p.ProductName,
    w.*
FROM Products p
INNER JOIN Inventory i
ON p.ProductID = i.ProductID
INNER JOIN Warehouses w
ON i.WarehouseID = w.WarehouseID;
-------------------------------------------------------------------
-- 8. Display customer name and payment method.
SELECT 
    c.FirstName + ' ' + c.LastName AS "Customer_Name",
    p.PaymentMethod
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN Payments p
ON o.OrderID = p.OrderID;
-------------------------------------------------------------------
-- 9. Show all products with their stock quantity.
SELECT 
    p.ProductID,
    p.ProductName,
    oi.Quantity
FROM Products p
INNER JOIN OrderItems oi
ON p.ProductID = oi.ProductID;
-------------------------------------------------------------------
-- 10. Display warehouse name and product quantity.
SELECT 
    w.WarehouseName,
    p.Stock
FROM Inventory i
INNER JOIN Products p
ON i.ProductID = p.ProductID
INNER JOIN Warehouses w
ON i.WarehouseID = w.WarehouseID;
-------------------------------------------------------------------
-- 11. Show every product along with its category and price.
SELECT 
    p.ProductName,
    c.CategoryName,
    p.Price
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;
-------------------------------------------------------------------
-- 12. Display supplier name and product name.
SELECT 
    s.SupplierName,
    p.ProductName
FROM Products p
INNER JOIN Suppliers s
ON p.SupplierID = s.SupplierID;
-------------------------------------------------------------------
-- 13. Show all employees with the orders they handled.
SELECT 
    e.EmployeeID,
    e.EmployeeName,
    o.OrderID,
    o.OrderDate,
    o.Status
FROM Employees e
INNER JOIN Orders o
ON e.EmployeeID = o.EmployeeID;
-------------------------------------------------------------------
-- 14. Display all orders with order status
SELECT
    OrderID,
    Status
FROM orders;
-------------------------------------------------------------------
-- 15. Show payment date and payment amount for every order.
SELECT 
    o.OrderID,
    p.PaymentDate,
    p.Amount
FROM Orders o
INNER JOIN Payments p
ON o.OrderID = p.OrderID;
-------------------------------------------------------------------
-- 16. Display all warehouse names.
SELECT 
WarehouseName 
FROM Warehouses;
-------------------------------------------------------------------
-- 17. Display all categories with their products.
SELECT 
    c.CategoryName,
    p.ProductName
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;
-------------------------------------------------------------------
-- 18. Show product name and inventory quantity.
SELECT
    p.ProductName,
    i.Quantity
FROM Products p
INNER JOIN Inventory i
ON p.ProductID = i.ProductID;
-------------------------------------------------------------------
-- 19. Show customer city along with order date.
SELECT 
    c.City,
    o.OrderDate
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = c.CustomerID;
-------------------------------------------------------------------
-- 20. Display all orders with customer phone number.
SELECT 
    o.OrderID,
    c.Phone
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;
