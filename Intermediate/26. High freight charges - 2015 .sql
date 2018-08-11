
--26. High freight charges - 2015
--We're continuing on the question above on high freight charges. Now, instead of using all the orders we have, we only want to see orders from the year 2015.

select TOP 3 ShipCountry, AVG(Freight) as AverageFreight, YEAR(OrderDate) as OrderYear from Northwind.Orders where YEAR(OrderDate)='2015' group by ShipCountry, YEAR(OrderDate) order by AverageFreight desc