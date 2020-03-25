create table customer(
	id int auto_increment primary key,
    name varbinary(40),
    address varchar (255),
    email varchar(255)
);
create table orders(
	orders_id int auto_increment,
    staff varchar(50),
    customer_id int,
    primary key (orders_id),
    foreign key (customer_id) references customers(id)
);
create table orders(
	orders_id int auto_increment primary key,
    staff varchar(50),
    customer_id int references customers(id)
);