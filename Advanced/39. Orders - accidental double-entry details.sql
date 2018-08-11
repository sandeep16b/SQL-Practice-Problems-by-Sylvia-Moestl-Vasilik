--39. Orders - accidental double-entry details
--Based on the previous question, we now want to show details of the order, for orders that match the above criteria.


;with TempTable as (
select OrderID from Northwind.[Order Details] where Quantity >=60 group by OrderID, Quantity  having COunt(*)>1 
)
Select 
	OrderID, ProductID, UnitPrice, Quantity, Discount from Northwind.[Order Details] where OrderID in (select OrderID from TempTable )

