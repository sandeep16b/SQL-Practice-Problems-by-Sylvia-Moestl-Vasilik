--25. High freight charges
--Some of the countries we ship to have very high freight charges. We'd like to investigate some more shipping options for our customers, to be able to offer them lower freight charges. Return the three ship countries with the highest average freight overall, in descending order by average freight.



select TOP 3 ShipCountry, AVG(Freight) as AverageFreight from northwind.orders group by ShipCountry Order by AverageFreight desc 