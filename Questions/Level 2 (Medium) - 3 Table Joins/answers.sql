-- 1. Display customer name, order ID and payment amount.
SELECT
	c.FirstName + ' ' + c.LastName AS "Customer Name",
	o.OrderID,
	p.Amount
FROM Customers c
INNER JOIN Orders o
ON         c.CustomerID = o.CustomerID
INNER JOIN Payments p
ON         o.OrderID = p.OrderId;
--------------------------------------------------------------------------
-- 2. Show customer name, employee name and order date.
SELECT
    c.FirstName + ' ' + c.LastName AS "Customer_Name",
	e.EmployeeName,
	o.OrderDate
FROM       Orders o
INNER JOIN Customers c
ON         o.CustomerID = c.CustomerID
INNER JOIN Employees e
ON         o.EmployeeID = e.EmployeeID;
--------------------------------------------------------------------------
-- 3. Display customer name, shipper name and order status.
SELECT 
	c.FirstName + ' ' + c.LastName AS "Customer_Name",
	s.CompanyName AS "Shipper_Name",
	o.Status
FROM       Orders o
INNER JOIN Customers c
ON         o.CustomerID = c.CustomerID
INNER JOIN Shippers s
ON         o.ShipperID = s.ShipperID;
--------------------------------------------------------------------------
-- 4. Show product name, category name and supplier name.
SELECT 
	p.ProductName,
	c.CategoryName,
	s.SupplierName
FROM       Products p
INNER JOIN Categories c
ON         p.CategoryID = c.CategoryID
INNER JOIN Suppliers s
ON         p.SupplierID = s.SupplierID;
--------------------------------------------------------------------------
-- 5. Display warehouse name, product name and quantity.
SELECT 
	w.WarehouseName,
	p.ProductName,
	i.Quantity
FROM       Products p
INNER JOIN Inventory i
ON         p.ProductID = i.ProductID
INNER JOIN Warehouses w
ON         i.WarehouseID = w.WarehouseID;
--------------------------------------------------------------------------
-- 6. Display customer name and products they purchased.
SELECT 
	c.FirstName + ' ' + c.LastName AS "Customer_Name",
	p.ProductName
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems oi
ON o.OrderID = oi.OrderID
INNER JOIN Products p
ON oi.ProductID = p.ProductID;
--------------------------------------------------------------------------
-- 7. Show product name and total quantity sold.
SELECT 
	p.ProductID,
	p.ProductName,
	SUM(oi.Quantity) AS "Total_Quantity"
FROM Products p
INNER JOIN OrderItems oi
ON p.ProductID = oi.ProductID
GROUP BY p.ProductID, p.ProductName;
--------------------------------------------------------------------------
-- 8. Show customer name and total amount spent.

SELECT 
	c.CustomerID,
	c.FirstName + ' ' + c.LastName AS "Customer_Name" ,
	SUM(oi.UnitPrice * oi.Quantity) AS "Total_amount_spent"
FROM Customers c
INNER JOIN Orders o
	ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems oi
	ON o.OrderID = oi.OrderID
GROUP BY c.CustomerID, c.FirstName, c.LastName;
--------------------------------------------------------------------------
-- 9. Display employee name and number of orders handled.
SELECT 
	e.EmployeeName,
	COUNT(o.OrderId) AS "Number of Orders Handled"
FROM Employees e
INNER JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeName;
--------------------------------------------------------------------------
-- 10. Display supplier name and number of products supplied.
SELECT
	s.SupplierID,
	s.SupplierName,
	COUNT(p.ProductID) AS "Number_of_Products_Suppied"
FROM Suppliers s
INNER JOIN Products p
    ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.SupplierName;
--------------------------------------------------------------------------
-- 11. Show category name and number of products.
SELECT 
    c.CategoryID,
	c.CategoryName,
	COUNT(p.ProductID) AS "Number_of_Products"
FROM Categories c
INNER JOIN Products p
    ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName
ORDER BY c.CategoryID;
--------------------------------------------------------------------------
-- 12. Display warehouse name and number of products stored.
SELECT 
	w.WarehouseName,
	COUNT(i.ProductID) AS "Number of Products Stored"
FROM Inventory i
INNER JOIN Warehouses w
    ON i.WarehouseID = w.WarehouseID
GROUP BY w.WarehouseID, w.WarehouseName
ORDER BY w.WarehouseID
--------------------------------------------------------------------------
-- 13. Show customers who purchased Electronics.
SELECT DISTINCT
    cu.FirstName + ' ' + cu.LastName AS "Customer_Name"
FROM Categories c
INNER JOIN Products p
    ON c.CategoryID = p.CategoryID
INNER JOIN OrderItems oi
    ON p.ProductID = oi.ProductID
INNER JOIN Orders o
    ON oi.OrderID = o.OrderID
INNER JOIN Customers cu
    ON o.CustomerID = cu.CustomerID
WHERE c.CategoryName = 'Electronics'
--------------------------------------------------------------------------
-- 14. Show customers who purchased Books.
SELECT DISTINCT
    cu.FirstName + ' ' + cu.LastName AS "Customer_Name"
FROM Categories c
INNER JOIN Products p
    ON c.CategoryID = p.CategoryID
INNER JOIN OrderItems oi
    ON p.ProductID = oi.ProductID
INNER JOIN Orders o
    ON oi.OrderID = o.OrderID
INNER JOIN Customers cu
    ON o.CustomerID = cu.CustomerID
WHERE c.CategoryName = 'Books'
--------------------------------------------------------------------------
-- 15. Display products purchased by each customer.
SELECT DISTINCT
    o.CustomerID,
	c.FirstName + ' ' + c.LastName AS "Customer_Name",
	p.ProductName
FROM Orders o
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN OrderItems oi
    ON oi.OrderID = o.OrderID
INNER JOIN Products p
    ON oi.ProductID  = p.ProductID
ORDER BY o.CustomerID
