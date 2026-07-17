/*
===========================================================================
Script Purpose:
--------------

    This script is used to create the database and all required tables to get
started with our JOINS project.

===========================================================================
*/


CREATE DATABASE OnlineRetailDB;
GO

USE OnlineRetailDB;
GO
-----------------------------------------------------------------------------
/* ======== Customers ======== */

CREATE TABLE Customers
(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    City VARCHAR(50),
    State VARCHAR(50),
    CreatedDate DATE DEFAULT GETDATE()
);
-----------------------------------------------------------------------------
/* ======== Employees ======== */

CREATE TABLE Employees
(
    EmployeeID INT IDENTITY(101,1) PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    HireDate DATE NOT NULL
);
-----------------------------------------------------------------------------
/* ======== Categories ======== */

CREATE TABLE Categories
(
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(100) UNIQUE NOT NULL
);
-----------------------------------------------------------------------------
/* ======== Suppliers ======== */

CREATE TABLE Suppliers
(
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    Phone VARCHAR(15) UNIQUE
);
-----------------------------------------------------------------------------
/* ======== Products ======== */

CREATE TABLE Products
(
    ProductID INT IDENTITY(1001,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT NOT NULL,
    SupplierID INT NOT NULL,
    Price DECIMAL(10,2) CHECK (Price > 0),
    Stock INT DEFAULT 0 CHECK (Stock >= 0),

    FOREIGN KEY(CategoryID)
        REFERENCES Categories(CategoryID),

    FOREIGN KEY(SupplierID)
        REFERENCES Suppliers(SupplierID)
);
-----------------------------------------------------------------------------
/* ======== Shippers ======== */

CREATE TABLE Shippers
(
    ShipperID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    Phone VARCHAR(15)
);
-----------------------------------------------------------------------------
/* ======== Orders ======== */

CREATE TABLE Orders
(
    OrderID INT IDENTITY(5001,1) PRIMARY KEY,

    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    ShipperID INT NOT NULL,

    OrderDate DATE DEFAULT GETDATE(),

    Status VARCHAR(20)
    CHECK(Status IN
    (
        'Pending',
        'Shipped',
        'Delivered',
        'Cancelled'
    )),

    FOREIGN KEY(CustomerID)
        REFERENCES Customers(CustomerID),

    FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID),

    FOREIGN KEY(ShipperID)
        REFERENCES Shippers(ShipperID)
);
-----------------------------------------------------------------------------
/* ======== OrderItems ======== */

CREATE TABLE OrderItems
(
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,

    OrderID INT NOT NULL,
    ProductID INT NOT NULL,

    Quantity INT CHECK (Quantity >= 0),

    UnitPrice DECIMAL(10,2)
    CHECK(UnitPrice > 0),

    FOREIGN KEY(OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY(ProductID)
        REFERENCES Products(ProductID)
);
-----------------------------------------------------------------------------
/* ======== Payments ======== */

CREATE TABLE Payments
(
    PaymentID INT IDENTITY(1,1) PRIMARY KEY,

    OrderID INT UNIQUE,

    PaymentDate DATE,

    Amount DECIMAL(10,2)
    CHECK(Amount > 0),

    PaymentMethod VARCHAR(20)
    CHECK(PaymentMethod IN
    (
        'Cash',
        'Card',
        'UPI',
        'Net Banking'
    )),

    FOREIGN KEY(OrderID)
        REFERENCES Orders(OrderID)
);
-----------------------------------------------------------------------------
/* ======== Warehouses ======== */

CREATE TABLE Warehouses
(
    WarehouseID INT IDENTITY(1,1) PRIMARY KEY,

    WarehouseName VARCHAR(100),

    City VARCHAR(50)
);
-----------------------------------------------------------------------------
/* ======== Inventory ======== */

CREATE TABLE Inventory
(
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,

    WarehouseID INT NOT NULL,

    ProductID INT NOT NULL,

    Quantity INT DEFAULT 0
    CHECK(Quantity >= 0),

    FOREIGN KEY(WarehouseID)
        REFERENCES Warehouses(WarehouseID),

    FOREIGN KEY(ProductID)
        REFERENCES Products(ProductID),

    CONSTRAINT UQ_Warehouse_Product
    UNIQUE(WarehouseID, ProductID)
);
