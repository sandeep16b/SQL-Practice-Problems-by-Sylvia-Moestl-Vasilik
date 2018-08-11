--31. Customers with no orders for EmployeeID 4
--One employee (Margaret Peacock, EmployeeID 4) has placed the most orders. However, there are some customers who've never placed an order with her. Show only those customers who have never placed an order with her.



select CustomerID from Northwind.Customers Where CustomerID Not IN (
select CustomerID from Northwind.Orders where EmployeeID = 4)