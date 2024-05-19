SELECT OrderID, OrderDate, ShippedDate, CustomerID, Freight
FROM Orders
ORDER BY Freight DESC
LIMIT 10;
