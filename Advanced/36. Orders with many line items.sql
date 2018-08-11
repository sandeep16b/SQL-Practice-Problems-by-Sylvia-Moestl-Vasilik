--36. Orders with many line items
--The Northwind mobile app developers are testing an app that customers will use to show orders. In order to make sure that even the largest orders will show up correctly on the app, they'd like some samples of orders that have lots of individual line items. Show the 10 orders with the most line items, in order of total line items.


select  TOP 10 OrderID, count(*) as TotalLineItems from Northwind.[Order Details] group by OrderID order by TotalLineItems desc
