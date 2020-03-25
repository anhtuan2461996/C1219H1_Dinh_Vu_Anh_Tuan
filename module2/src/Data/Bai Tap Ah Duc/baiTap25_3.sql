drop database if exists bai_tap_25_3;
create database bai_tap_25_3;
use bai_tap_25_3;
create table suppliers(
	Id int(11) auto_increment primary key,
    Name varchar(100) not null,
    Email varchar(50) not null,
    PhoneNumber varchar(20),
    Address varchar(500)
);
create table categories(
	Id int (11) auto_increment primary key,
	Name varchar(50) not null,
	Descriplion varchar(500)
);
create table products(
	Id int (11) primary key,
    Name varchar(50) not null,
    ImageUrl varchar(1000) not null,
    Price decimal(18,2),
    Discount decimal (18,2),
    Stock decimal (18,2),
    SuppliersId int ,
    FOREIGN KEY (SuppliersId) REFERENCES suppliers(Id),
    CategoriesId int ,
    foreign key (CategoriesId) references categories(Id)
);
create table employees(
	Id int(11) auto_increment primary key,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    PhoneNumber varchar (20),
    Address varchar(500) not null,
    Email varchar (50) not null,
    Birthday datetime
);
create table orders(
	Id int auto_increment primary key,
    CreateDate datetime not null,
    ShipperDate datetime,
    Status varchar(50) not null,
    Description varchar (1000),
    ShippingAdress varchar (500) not null,
    ShippingCity varchar(50) not null,
    PaymentType varchar (20) not null,
    EmployeesId int,
    foreign key (EmployeesId) references employees(Id),
    CustomersId int,
    FOREIGN KEY (CustomersId) REFERENCES customers(Id)
);
create table customers(
	Id int auto_increment primary key,
    FirstName varchar(50) not null,
    LastNamr varchar(50) not null,
    PhoneNumber varchar (20),
    Address varchar(500) not null,
    Email varchar(50) not null,
    Birthday date
);
create table orderdetalls(
	Id int (11) auto_increment primary key,
    ProductId int (11),
    foreign key (ProductId) references products(Id),
    OrderId int(11),
    foreign key (OrderId) references orders(Id),
    Quantity decimal (18,2)
);