SELECT 
    c.CustomerName AS customer,
    o.OrderDate AS order_date,
    p.ProductName AS product,
    od.Quantity AS quantity
FROM customers c
JOIN orders o
    ON c.CustomerID = o.CustomerID
JOIN order_details od
    ON o.OrderID = od.OrderID
JOIN products p
    ON od.ProductID = p.ProductID;
    