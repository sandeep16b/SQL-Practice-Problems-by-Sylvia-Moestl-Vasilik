--21. Total customers per country/city
--In the Customers table, show the total number of customers per Country and City.

(select Country,City, Count(*) as TotalProducts from Northwind.Customers group by Country, City) order by TotalProducts desc

--or

(select Country,City, Count(*) as TotalProducts from Northwind.Customers group by City, Country) order by TotalProducts desc