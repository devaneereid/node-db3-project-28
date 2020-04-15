-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
Select p.ProductName, c.CategoryName 
from Product as p
join Category as c
on p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select o.Id 
, s.CompanyName 
FROM [order] as o
JOIN Shipper as s
ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select p.ProductName
, od.Quantity
, od.Id
FROM OrderDetail as od
JOIN Product as p
ON od.ProductId = p.Id
WHERE od.OrderId = 10251


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select o.Id
, c.CompanyName
, e.LastName
From [Order] as o
JOIN Customer as c
on o.CustomerId = c.Id
JOIN Employee as e
on o.EmployeeId = e.Id
