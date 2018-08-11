--32. High-value customers

-- We want to send all of our high-value customers a special VIP gift. We're defining high-value customers as those who've made at least 1 order with a total value (not including the discount) equal to $10,000 or more. We only want to consider orders made in the year 2016.


select c.CustomerID, c.CompanyName, o.OrderID, TotalOrderAmount = sum(od.UnitPrice * od.Quantity)  from Northwind.[Order Details] od join
Northwind.Orders o on o.OrderID = od.OrderID join Northwind.Customers c on c.CustomerID = o.CustomerID and Year(o.OrderDate)=2016 group by c.CustomerID, c.CompanyName, o.OrderID having SUM(od.UnitPrice * od.Quantity)  > 10000 Order by TotalOrderAmount desc

