--22. Products that need reordering
--What products do we have in our inventory that should be reordered? For now, just use the fields UnitsInStock and ReorderLevel, where UnitsInStock is less than the ReorderLevel, ignoring the fields UnitsOnOrder and Discontinued.
--Order the results by ProductID.

select ProductID, ProductName, UnitsInStock, ReorderLevel from Northwind.Products where (UnitsInStock) < ReorderLevel