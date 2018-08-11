--20. Categories, and the total products in each category
--In the Customers table, show the total number of customers per Country and City.

(select Country,City, Count(*) as TotalProducts from Northwind.Customers group by Country, City) order by TotalProducts desc