drop database if exists ly_thuyet_join;
create database ly_thuyet_join;
use ly_thuyet_join;
CREATE TABLE customers (
    CustomerId INT AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(45),
    PostalCode INT,
    Country VARCHAR(45),
    PRIMARY KEY (CustomerId)
);
CREATE TABLE orders (
    OrderId INT,
    CustomerId INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    PRIMARY KEY (OrderId)
);
insert into customers(CustomerName,ContactName,Address,City,PostalCode,Country) values
	('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin',12209,'Germany'),
	('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.',05021,'Mexico'),
	('Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.',05023,'Mexico');
insert into orders(OrderID,	CustomerId,	EmployeeID,	OrderDate,	ShipperID) values
	(10308,	2,	7,	"1996-09-18",	3),
    (10309,	37,	3,	"1996-09-19",	1),
    (10310,	77,	8,	"1996-09-20",	2);
-- SELECT * FROM Orders
--	INNER JOIN
--    Customers ON Orders.CustomerID = Customers.CustomerID;
-- SELECT Customers.CustomerName, Orders.OrderID FROM Customers
--	LEFT JOIN
--    Orders ON Customers.CustomerID = Orders.CustomerID
--	ORDER BY Customers.CustomerName;
-- SELECT Customers.CustomerName, Orders.OrderID FROM Customers
--	RIGHT JOIN
--    Orders ON Customers.CustomerID = Orders.CustomerID
--	ORDER BY Customers.CustomerName;

-- su dung cac toan tu =,<>,>,<,>=,<=between,like,in

-- su dung cac toan tu =
select * from Customers 
where CustomerId ='2';

-- su dung cac toan tu >
select * from Customers 
where CustomerId >'2';

-- su dung cac toan tu <
select * from Customers 
where CustomerId >'2';

-- su dung cac toan tu <>
select * from Customers 
where CustomerId <>'2';

-- su dung cac toan tu >=
select * from Customers 
where CustomerId >='2';

-- su dung cac toan tu =<
select * from Customers 
where CustomerId <='2';

-- su dung cac toan tu between
select * from Customers 
where CustomerId between 1 and 3;

-- su dung cac toan tu like
select * from Customers 
where CustomerName like 'a%';

-- su dung cac toan tu in
select * from orders 
where ShipperID in ('4','3');

-- các câu lệnh inner join là tổng hợp phần chung của 2 bảng
select customers.CustomerName, orders.CustomerId from customers
inner join orders on Customers.CustomerId = orders.CustomerId;
-- các câu lệnh left join  
select * from orders
left join customers on orders.CustomerId = customers.CustomerId;
-- các câu lệnh right join
select * from orders
right join customers on orders.CustomerId = customers.CustomerId;
