select * from customers;
select * from classicmodels.customers;
update customers set addressLine2='level 4'
where `customerNumber` = '103';
UPDATE `classicmodels`.`customers` SET `addressLine2` = 'level 3' WHERE (`customerNumber` = '103');
delete from `classicmodels`.`customers` 
where `customerNumber` = '103';
select customerName,phone,city,country from customers;
SELECT customerName, phone, city, country FROM customers;
select * from customers
where customerName = 'Atelier graphique';
select * from customers
where customerName like '%A%';
select * from customers
where city in ('Nantes',' Las Vegas',' Warszawa','NYC');