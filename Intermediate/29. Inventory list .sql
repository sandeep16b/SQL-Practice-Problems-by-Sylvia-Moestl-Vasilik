--29. Inventory list
--We're doing inventory, and need to show information like the below, for all orders. Sort by OrderID and Product ID.

--Expected Results-- The columns in the expected results should be--EmployeeID LastName OrderID ProductName Quantity ----------- -------------------- ----------- ---------------------------------------- --------


select sample.EmployeeID, sample.LastName, sample.OrderID, p.ProductID, od.Quantity from
		(select o.EmployeeID, e.LastName, o.OrderID from Northwind.Orders o 
		join Northwind.Employees e on
		o.EmployeeID = e.EmployeeID) as sample
	join Northwind.[Order Details] od on
	sample.OrderID = od.OrderID join Northwind.Products p on
	p.ProductID = od.ProductID 