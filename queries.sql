-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
Select p.ProductName, c.CategoryName 
from Product as p
join Category as c
on p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
Select [order].Id 
, Shipper.CompanyName 
FROM [order]
JOIN Shipper
ON [order].ShipVia = s.Id
WHERE [order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select Product.ProductName
, OrderDetail.Quantity
FROM OrderDetail
JOIN Product
ON OrderDetail.ProductId = Product.Id
WHERE OrderDetail.OrderId = 10251
Order by ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
Select o.Id as OrderId
, c.CompanyName
, e.LastName as EmployeeLastName
From [Order] as o
JOIN Customer as c
on o.CustomerId = c.Id
JOIN Employee as e
on o.EmployeeId = e.Id
