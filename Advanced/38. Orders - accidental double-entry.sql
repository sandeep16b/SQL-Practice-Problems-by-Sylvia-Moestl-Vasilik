--39. Orders - accidental double-entry details
--Based on the previous question, we now want to show details of the order, for orders that match the above criteria.


select OrderID, Quantity, Count(*) from Northwind.[Order Details] where Quantity >=60 group by OrderID, Quantity  having COunt(*)>1 