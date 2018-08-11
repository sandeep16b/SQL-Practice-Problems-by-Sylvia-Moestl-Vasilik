--Orders - accidental double-entry details, derived table
--Here's another way of getting the same results as in the previous problem, using a derived table instead of a CTE. However, there's a bug in this SQL. It returns 20 rows instead of 16. Correct the SQL.

--Problem SQL:

Select[Order Details].OrderID,ProductID
,UnitPrice,Quantity
,DiscountFrom Northwind.[Order Details]Join (select OrderID from Northwind.[Order Details] where Quantity >=60 group by OrderID, Quantity  having COunt(*)>1)  PotentialProblemOrderson PotentialProblemOrders.OrderID = [Order Details].OrderIDOrder by OrderID, ProductID