--30. Customers with no orders
--There are some customers who have never actually placed an order. Show these customers.

select * from Northwind.Customers where CustomerID NOT IN
(select c.CustomerID from Northwind.Customers c  join Northwind.Orders o on
	o.CustomerID = c.CustomerID )