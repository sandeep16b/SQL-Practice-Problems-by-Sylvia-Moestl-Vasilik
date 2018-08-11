--34. High-value customers - with discount
--Change the above query to use the discount when calculating high-value customers. Order by the total amount which includes the discount.


select c.CustomerID, c.CompanyName, TotalOrderAmount = sum(od.UnitPrice * od.Quantity), TotalOrderAmountWithDiscount = sum(od.UnitPrice * od.Quantity * (1-od.Discount))   from Northwind.[Order Details] od join
Northwind.Orders o on o.OrderID = od.OrderID join Northwind.Customers c on c.CustomerID = o.CustomerID and Year(o.OrderDate)=2016 group by c.CustomerID, c.CompanyName having sum(od.UnitPrice * od.Quantity * (1-od.Discount))   > 15000 Order by TotalOrderAmountWithDiscount desc


