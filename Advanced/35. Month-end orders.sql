--35. Month-end orders
--At the end of the month, salespeople are likely to try much harder to get orders, to meet their month-end quotas. Show all orders made on the last day of the month. Order by EmployeeID and OrderID



select e.EmployeeID, o.OrderID, o.OrderDate from Northwind.Orders o join Northwind.Employees e on
e.EmployeeID = o.EmployeeID where OrderDate = EOMONTH(OrderDate) order by e.EmployeeID, o.OrderID