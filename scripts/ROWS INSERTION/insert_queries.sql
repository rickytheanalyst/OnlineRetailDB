/*
=========================================================================
Script Purpose:
    This script is used to insert the required records in all tables.
=========================================================================
*/

--------------------------------------------------------------------------
/* ========= Categories ========= */

INSERT INTO Categories(CategoryName)
VALUES
    ('Electronics'),
    ('Computers'),
    ('Mobile Phones'),
    ('Home Appliances'),
    ('Furniture'),
    ('Books'),
    ('Clothing'),
    ('Sports'),
    ('Toys'),
    ('Groceries'),
    ('Beauty'),
    ('Automotive'),
    ('Health'),
    ('Jewelry'),
    ('Office Supplies');
--------------------------------------------------------------------------
/* ========= Suppliers ========= */

INSERT INTO Suppliers(SupplierName, Country, Phone)
VALUES
    ('TechWorld Pvt Ltd','India','9876500001'),
    ('Global Electronics','USA','9876500002'),
    ('Prime Mobiles','India','9876500003'),
    ('Smart Supplies','China','9876500004'),
    ('Elite Furnitures','India','9876500005'),
    ('Book Hub','UK','9876500006'),
    ('Fashion Factory','India','9876500007'),
    ('Sports Nation','Germany','9876500008'),
    ('Toy Planet','Japan','9876500009'),
    ('Fresh Foods Ltd','India','9876500010'),
    ('Beauty World','France','9876500011'),
    ('Auto Parts Inc','USA','9876500012'),
    ('Health Care Ltd','India','9876500013'),
    ('Golden Jewelry','UAE','9876500014'),
    ('Office Mart','India','9876500015'),
    ('Digital Zone','Singapore','9876500016'),
    ('Laptop Point','India','9876500017'),
    ('Mobile Universe','South Korea','9876500018'),
    ('Kitchen Experts','India','9876500019'),
    ('Home Essentials','Canada','9876500020');
--------------------------------------------------------------------------
/* ========= Shippers ========= */

INSERT INTO Shippers(CompanyName, Phone)
VALUES
    ('Blue Dart','9000000001'),
    ('DTDC','9000000002'),
    ('Delhivery','9000000003'),
    ('FedEx','9000000004'),
    ('DHL','9000000005'),
    ('India Post','9000000006'),
    ('XpressBees','9000000007'),
    ('Ecom Express','9000000008'),
    ('Shadowfax','9000000009'),
    ('Ekart Logistics','9000000010');
--------------------------------------------------------------------------
/* ========= Warehouses ========= */

INSERT INTO Warehouses(WarehouseName, City)
VALUES
    ('Hyderabad Central Warehouse','Hyderabad'),
    ('Bangalore Warehouse','Bangalore'),
    ('Chennai Warehouse','Chennai'),
    ('Mumbai Warehouse','Mumbai'),
    ('Delhi Warehouse','New Delhi'),
    ('Pune Warehouse','Pune'),
    ('Kolkata Warehouse','Kolkata'),
    ('Ahmedabad Warehouse','Ahmedabad'),
    ('Visakhapatnam Warehouse','Visakhapatnam'),
    ('Coimbatore Warehouse','Coimbatore');
--------------------------------------------------------------------------
/* ========= Customers ========= */

INSERT INTO Customers
(FirstName, LastName, Email, Phone, City, State)
VALUES
    ('Aarav','Sharma','aarav.sharma@gmail.com','9000000001','Hyderabad','Telangana'),
    ('Diya','Reddy','diya.reddy@gmail.com','9000000002','Hyderabad','Telangana'),
    ('Rahul','Verma','rahul.verma@gmail.com','9000000003','Bangalore','Karnataka'),
    ('Sneha','Patel','sneha.patel@gmail.com','9000000004','Mumbai','Maharashtra'),
    ('Arjun','Kumar','arjun.kumar@gmail.com','9000000005','Chennai','Tamil Nadu'),
    ('Priya','Singh','priya.singh@gmail.com','9000000006','Delhi','Delhi'),
    ('Karan','Mehta','karan.mehta@gmail.com','9000000007','Pune','Maharashtra'),
    ('Ananya','Nair','ananya.nair@gmail.com','9000000008','Kochi','Kerala'),
    ('Vikram','Joshi','vikram.joshi@gmail.com','9000000009','Jaipur','Rajasthan'),
    ('Meera','Iyer','meera.iyer@gmail.com','9000000010','Coimbatore','Tamil Nadu'),
    ('Rohan','Gupta','rohan.gupta@gmail.com','9000000011','Ahmedabad','Gujarat'),
    ('Kavya','Rao','kavya.rao@gmail.com','9000000012','Visakhapatnam','Andhra Pradesh'),
    ('Aditya','Mishra','aditya.mishra@gmail.com','9000000013','Lucknow','Uttar Pradesh'),
    ('Pooja','Yadav','pooja.yadav@gmail.com','9000000014','Patna','Bihar'),
    ('Nikhil','Chowdary','nikhil.ch@gmail.com','9000000015','Vijayawada','Andhra Pradesh'),
    ('Aisha','Khan','aisha.khan@gmail.com','9000000016','Bhopal','Madhya Pradesh'),
    ('Manoj','Das','manoj.das@gmail.com','9000000017','Bhubaneswar','Odisha'),
    ('Neha','Agarwal','neha.agarwal@gmail.com','9000000018','Indore','Madhya Pradesh'),
    ('Sanjay','Kulkarni','sanjay.kulkarni@gmail.com','9000000019','Nagpur','Maharashtra'),
    ('Ishita','Roy','ishita.roy@gmail.com','9000000020','Kolkata','West Bengal');
--------------------------------------------------------------------------
/* ========= Employees ========= */

INSERT INTO Employees
(EmployeeName, Department, Designation, Salary, HireDate)
VALUES
    ('Rajesh Kumar','Sales','Sales Executive',45000,'2021-03-15'),
    ('Anita Sharma','Sales','Sales Manager',75000,'2019-07-10'),
    ('Vikram Singh','Support','Support Executive',40000,'2022-01-20'),
    ('Priyanka Rao','Support','Support Manager',70000,'2018-11-05'),
    ('Amit Patel','IT','Software Engineer',65000,'2020-06-12'),
    ('Deepa Nair','IT','Senior Developer',85000,'2017-08-22'),
    ('Rohit Verma','HR','HR Executive',50000,'2021-09-01'),
    ('Sunita Reddy','HR','HR Manager',78000,'2016-04-18'),
    ('Kiran Joshi','Finance','Accountant',55000,'2020-12-10'),
    ('Meena Gupta','Finance','Finance Manager',90000,'2015-02-25'),
    ('Arvind Kumar','Operations','Operations Executive',48000,'2022-05-17'),
    ('Lavanya Iyer','Operations','Operations Manager',82000,'2018-10-30'),
    ('Suresh Babu','Sales','Sales Executive',46000,'2023-01-05'),
    ('Harsha Reddy','IT','Database Administrator',78000,'2019-09-15'),
    ('Naveen Kumar','Logistics','Logistics Coordinator',52000,'2021-07-19');
--------------------------------------------------------------------------
/* ========= Products ========= */

INSERT INTO Products
(ProductName, CategoryID, SupplierID, Price, Stock)
VALUES
    ('Samsung 55 Inch Smart TV',1,2,54999.00,30),
    ('Sony Bluetooth Speaker',1,2,7999.00,60),
    ('Apple AirPods Pro',1,16,24999.00,45),
    ('Dell Inspiron Laptop',2,17,68999.00,25),
    ('HP Pavilion Laptop',2,17,72999.00,20),
    ('Lenovo ThinkPad',2,1,81999.00,18),
    ('iPhone 15',3,18,79999.00,35),
    ('Samsung Galaxy S24',3,3,74999.00,40),
    ('OnePlus 13',3,3,54999.00,50),
    ('LG Washing Machine',4,19,38999.00,12),
    ('Whirlpool Refrigerator',4,20,45999.00,15),
    ('Prestige Microwave Oven',4,19,12999.00,22),
    ('Wooden Dining Table',5,5,25999.00,10),
    ('Office Chair',5,15,7999.00,45),
    ('King Size Bed',5,5,32999.00,8),
    ('SQL for Beginners',6,6,599.00,120),
    ('Python Programming',6,6,899.00,100),
    ('Machine Learning Handbook',6,6,1299.00,80),
    ('Men''s Casual Shirt',7,7,1499.00,150),
    ('Women''s Kurti',7,7,1799.00,140),
    ('Men''s Jeans',7,7,1999.00,130),
    ('Cricket Bat',8,8,3499.00,40),
    ('Football',8,8,899.00,75),
    ('Badminton Racket',8,8,2199.00,50),
    ('Remote Control Car',9,9,2499.00,60),
    ('LEGO Building Set',9,9,3999.00,35),
    ('Barbie Doll',9,9,1899.00,55),
    ('Basmati Rice 10kg',10,10,1099.00,200),
    ('Sunflower Oil 5L',10,10,899.00,180),
    ('Organic Honey',10,10,499.00,140),
    ('Face Wash',11,11,349.00,160),
    ('Hair Shampoo',11,11,499.00,170),
    ('Body Lotion',11,11,599.00,130),
    ('Car Battery',12,12,6499.00,20),
    ('Engine Oil 5L',12,12,1899.00,60),
    ('Vitamin C Tablets',13,13,699.00,90),
    ('Digital Thermometer',13,13,499.00,110),
    ('Gold Ring',14,14,25999.00,12),
    ('Diamond Necklace',14,14,89999.00,5),
    ('Printer Paper A4 Pack',15,15,399.00,250);
--------------------------------------------------------------------------
/* ========= Orders ========= */

INSERT INTO Orders
(CustomerID, EmployeeID, ShipperID, OrderDate, Status)
VALUES
    (1,101,1,'2025-01-05','Delivered'),
    (2,102,2,'2025-01-06','Delivered'),
    (3,103,3,'2025-01-08','Shipped'),
    (4,104,4,'2025-01-09','Pending'),
    (5,105,5,'2025-01-10','Delivered'),
    (6,106,6,'2025-01-12','Cancelled'),
    (7,107,7,'2025-01-13','Delivered'),
    (8,108,8,'2025-01-15','Shipped'),
    (9,109,9,'2025-01-16','Pending'),
    (10,110,10,'2025-01-18','Delivered'),
    
    (11,111,1,'2025-01-20','Delivered'),
    (12,112,2,'2025-01-21','Pending'),
    (13,113,3,'2025-01-22','Shipped'),
    (14,114,4,'2025-01-23','Delivered'),
    (15,115,5,'2025-01-24','Cancelled'),
    (16,101,6,'2025-01-25','Delivered'),
    (17,102,7,'2025-01-26','Shipped'),
    (18,103,8,'2025-01-27','Pending'),
    (19,104,9,'2025-01-28','Delivered'),
    (20,105,10,'2025-01-30','Delivered'),
    
    (1,106,2,'2025-02-01','Delivered'),
    (3,107,3,'2025-02-02','Pending'),
    (5,108,4,'2025-02-03','Shipped'),
    (7,109,5,'2025-02-05','Delivered'),
    (9,110,6,'2025-02-06','Cancelled'),
    (11,111,7,'2025-02-07','Delivered'),
    (13,112,8,'2025-02-08','Pending'),
    (15,113,9,'2025-02-09','Delivered'),
    (17,114,10,'2025-02-10','Shipped'),
    (19,115,1,'2025-02-12','Delivered'),
    
    (2,101,2,'2025-02-13','Pending'),
    (4,102,3,'2025-02-14','Delivered'),
    (6,103,4,'2025-02-15','Delivered'),
    (8,104,5,'2025-02-16','Shipped'),
    (10,105,6,'2025-02-18','Cancelled'),
    (12,106,7,'2025-02-19','Delivered'),
    (14,107,8,'2025-02-20','Pending'),
    (16,108,9,'2025-02-21','Delivered'),
    (18,109,10,'2025-02-22','Shipped'),
    (20,110,1,'2025-02-23','Delivered'),
    
    (5,111,2,'2025-02-24','Pending'),
    (8,112,3,'2025-02-25','Delivered'),
    (11,113,4,'2025-02-26','Shipped'),
    (14,114,5,'2025-02-27','Delivered'),
    (17,115,6,'2025-02-28','Cancelled'),
    (2,101,7,'2025-03-01','Delivered'),
    (6,102,8,'2025-03-02','Pending'),
    (10,103,9,'2025-03-03','Shipped'),
    (15,104,10,'2025-03-04','Delivered'),
    (20,105,1,'2025-03-05','Delivered');
--------------------------------------------------------------------------
/* ========= OrderItems ========= */

INSERT INTO OrderItems (OrderID, ProductID, Quantity, UnitPrice)
VALUES
    (5001,1007,1,79999.00),
    (5001,1031,2,349.00),
    
    (5002,1004,1,68999.00),
    (5002,1016,2,599.00),
    
    (5003,1008,1,74999.00),
    (5003,1023,1,899.00),
    
    (5004,1013,1,25999.00),
    (5004,1014,4,7999.00),
    
    (5005,1010,1,38999.00),
    (5005,1029,3,899.00),
    
    (5006,1002,2,7999.00),
    (5006,1032,1,499.00),
    
    (5007,1009,1,54999.00),
    (5007,1017,1,899.00),
    
    (5008,1005,1,72999.00),
    (5008,1025,2,2499.00),
    
    (5009,1034,1,6499.00),
    (5009,1036,2,699.00),
    
    (5010,1001,1,54999.00),
    (5010,1028,5,1099.00),
    
    (5011,1011,1,45999.00),
    (5011,1037,1,499.00),
    
    (5012,1006,1,81999.00),
    (5012,1020,2,1799.00),
    
    (5013,1038,1,25999.00),
    (5013,1024,1,2199.00),
    
    (5014,1003,1,24999.00),
    (5014,1019,3,1499.00),
    
    (5015,1012,1,12999.00),
    (5015,1035,2,1899.00),
    
    (5016,1007,1,79999.00),
    (5016,1040,5,399.00),
    
    (5017,1018,2,1299.00),
    (5017,1022,1,3499.00),
    
    (5018,1008,1,74999.00),
    (5018,1033,2,599.00),
    
    (5019,1015,1,32999.00),
    (5019,1026,1,3999.00),
    
    (5020,1009,1,54999.00),
    (5020,1030,3,499.00),
    
    (5021,1004,1,68999.00),
    (5021,1021,2,1999.00),
    
    (5022,1002,1,7999.00),
    (5022,1029,2,899.00),
    
    (5023,1016,3,599.00),
    (5023,1034,1,6499.00),
    
    (5024,1005,1,72999.00),
    (5024,1039,1,89999.00),
    
    (5025,1017,2,899.00),
    
    (5026,1018,1,1299.00),
    (5026,1001,1,54999.00),
    
    (5027,1006,1,81999.00),
    (5027,1031,3,349.00),
    
    (5028,1022,2,3499.00),
    (5028,1037,1,499.00),
    
    (5029,1008,1,74999.00),
    (5029,1019,2,1499.00),
    
    (5030,1011,1,45999.00),
    (5030,1028,4,1099.00),
    
    (5031,1003,1,24999.00),
    (5031,1033,2,599.00),
    
    (5032,1005,1,72999.00),
    (5032,1024,1,2199.00),
    
    (5033,1014,2,7999.00),
    (5033,1035,1,1899.00),
    
    (5034,1002,3,7999.00),
    (5034,1017,2,899.00),
    
    (5035,1038,1,25999.00),
    (5035,1032,2,499.00),
    
    (5036,1010,1,38999.00),
    (5036,1026,1,3999.00),
    
    (5037,1007,1,79999.00),
    (5037,1036,2,699.00),
    
    (5038,1013,1,25999.00),
    (5038,1040,5,399.00),
    
    (5039,1009,1,54999.00),
    (5039,1021,2,1999.00),
    
    (5040,1004,1,68999.00),
    (5040,1030,3,499.00),
    
    (5041,1012,1,12999.00),
    (5041,1025,2,2499.00),
    
    (5042,1015,1,32999.00),
    (5042,1039,1,89999.00),
    
    (5043,1001,1,54999.00),
    (5043,1016,2,599.00),
    
    (5044,1006,1,81999.00),
    (5044,1034,1,6499.00),
    
    (5045,1023,3,899.00),
    (5045,1037,2,499.00),
    
    (5046,1008,1,74999.00),
    (5046,1018,2,1299.00),
    
    (5047,1011,1,45999.00),
    (5047,1035,2,1899.00),
    
    (5048,1005,1,72999.00),
    (5048,1029,4,899.00),
    
    (5049,1003,1,24999.00),
    (5049,1022,1,3499.00),
    
    (5050,1007,1,79999.00),
    (5050,1038,1,25999.00);
--------------------------------------------------------------------------
/* ========= Payments ========= */

INSERT INTO Payments
(OrderID, PaymentDate, Amount, PaymentMethod)
VALUES
    (5001,'2025-01-05',80697.00,'Card'),
    (5002,'2025-01-06',70200.00,'UPI'),
    (5003,'2025-01-08',75898.00,'Net Banking'),
    (5004,'2025-01-09',57995.00,'Card'),
    (5005,'2025-01-10',41696.00,'UPI'),
    (5006,'2025-01-12',16497.00,'Cash'),
    (5007,'2025-01-13',55898.00,'Card'),
    (5008,'2025-01-15',77997.00,'Net Banking'),
    (5009,'2025-01-16',7897.00,'UPI'),
    (5010,'2025-01-18',60494.00,'Card'),
    
    (5011,'2025-01-20',46498.00,'Card'),
    (5012,'2025-01-21',85597.00,'Cash'),
    (5013,'2025-01-22',28198.00,'UPI'),
    (5014,'2025-01-23',29496.00,'Net Banking'),
    (5015,'2025-01-24',16797.00,'Card'),
    (5016,'2025-01-25',81994.00,'UPI'),
    (5017,'2025-01-26',6097.00,'Cash'),
    (5018,'2025-01-27',76197.00,'Card'),
    (5019,'2025-01-28',36998.00,'Net Banking'),
    (5020,'2025-01-30',56496.00,'UPI'),
    
    (5021,'2025-02-01',72997.00,'Card'),
    (5022,'2025-02-02',9797.00,'Cash'),
    (5023,'2025-02-03',8296.00,'UPI'),
    (5024,'2025-02-05',162998.00,'Net Banking'),
    (5025,'2025-02-06',1798.00,'Card'),
    (5026,'2025-02-07',56298.00,'UPI'),
    (5027,'2025-02-08',83046.00,'Card'),
    (5028,'2025-02-09',7497.00,'Cash'),
    (5029,'2025-02-10',77997.00,'Net Banking'),
    (5030,'2025-02-12',50395.00,'UPI'),
    
    (5031,'2025-02-13',26197.00,'Card'),
    (5032,'2025-02-14',75198.00,'Cash'),
    (5033,'2025-02-15',17897.00,'UPI'),
    (5034,'2025-02-16',25795.00,'Card'),
    (5035,'2025-02-18',26997.00,'Net Banking'),
    (5036,'2025-02-19',42998.00,'UPI'),
    (5037,'2025-02-20',81397.00,'Card'),
    (5038,'2025-02-21',27994.00,'Cash'),
    (5039,'2025-02-22',58997.00,'UPI'),
    (5040,'2025-02-23',70496.00,'Net Banking'),
    
    (5041,'2025-02-24',17997.00,'Card'),
    (5042,'2025-02-25',122998.00,'UPI'),
    (5043,'2025-02-26',56197.00,'Cash'),
    (5044,'2025-02-27',88498.00,'Card'),
    (5045,'2025-02-28',3695.00,'UPI'),
    (5046,'2025-03-01',77597.00,'Net Banking'),
    (5047,'2025-03-02',49797.00,'Card'),
    (5048,'2025-03-03',76595.00,'UPI'),
    (5049,'2025-03-04',28498.00,'Cash'),
    (5050,'2025-03-05',105998.00,'Card');
--------------------------------------------------------------------------
/* ========= Inventory ========= */

INSERT INTO Inventory
(WarehouseID, ProductID, Quantity)
VALUES
    -- Warehouse 1
    (1,1001,15),
    (1,1002,30),
    (1,1003,20),
    (1,1004,10),
    (1,1005,12),
    
    -- Warehouse 2
    (2,1006,18),
    (2,1007,22),
    (2,1008,16),
    (2,1009,25),
    (2,1010,14),
    
    -- Warehouse 3
    (3,1011,11),
    (3,1012,17),
    (3,1013,8),
    (3,1014,40),
    (3,1015,6),
    
    -- Warehouse 4
    (4,1016,80),
    (4,1017,65),
    (4,1018,50),
    (4,1019,120),
    (4,1020,95),
    
    -- Warehouse 5
    (5,1021,110),
    (5,1022,35),
    (5,1023,60),
    (5,1024,45),
    (5,1025,30),
    
    -- Warehouse 6
    (6,1026,28),
    (6,1027,42),
    (6,1028,160),
    (6,1029,150),
    (6,1030,90),
    
    -- Warehouse 7
    (7,1031,130),
    (7,1032,140),
    (7,1033,100),
    (7,1034,18),
    (7,1035,55),
    
    -- Warehouse 8
    (8,1036,70),
    (8,1037,85),
    (8,1038,9),
    (8,1039,4),
    (8,1040,220),
    
    -- Warehouse 9
    (9,1001,8),
    (9,1008,14),
    (9,1016,35),
    (9,1028,75),
    (9,1039,3),
    
    -- Warehouse 10
    (10,1005,10),
    (10,1010,9),
    (10,1023,25),
    (10,1031,60),
    (10,1040,180);





