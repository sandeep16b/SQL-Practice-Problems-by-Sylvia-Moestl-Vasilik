--33. High-value customers - total orders
--The manager has changed his mind. Instead of requiring that customers have at least one individual orders totaling $10,000 or more, he wants to define high-value customers as those who have orders totaling $15,000 or more in 2016. How would you change the answer to the problem above?



select c.CustomerID, c.CompanyName, TotalOrderAmount = sum(od.UnitPrice * od.Quantity)  from Northwind.[Order Details] od join
Northwind.Orders o on o.OrderID = od.OrderID join Northwind.Customers c on c.CustomerID = o.CustomerID and Year(o.OrderDate)=2016 group by c.CustomerID, c.CompanyName having SUM(od.UnitPrice * od.Quantity)  > 15000 Order by TotalOrderAmount desc

