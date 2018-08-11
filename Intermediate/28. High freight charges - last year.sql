
--28. High freight charges - last year
--We're continuing to work on high freight charges. We now want to get the three ship countries with the highest average freight charges. But instead of filtering for a particular year, we want to use the last 12 months of order data, using as the end date the last OrderDate in Orders.

select TOP 3 ShipCountry, AVG(Freight) as AverageFreight from Northwind.Orders where OrderDate >= DATEADD(yy, -1, (select max(OrderDate) from Northwind.Orders)) group by ShipCountry order by AverageFreight desc