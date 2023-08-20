SELECT * FROM HumanResources.Department;

SELECT GroupName 
FROM HumanResources.Department
GROUP BY GroupName;

SELECT *
FROM HumanResources.Department
ORDER BY Name DESC;

SELECT *
FROM HumanResources.Department
ORDER BY Name ASC;

SELECT *
FROM HumanResources.Employee;

SELECT *
FROM HumanResources.Employee
WHERE Gender = 'M';

SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel > 3;

SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel >= 2 AND Gender = 'F';

SELECT BusinessEntityID, NationalIDNumber
FROM HumanResources.Employee
WHERE JobTitle IN ('Marketing Assistant', 'Design Engineer');

SELECT *
FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1969-01-01' AND '1972-12-31';

SELECT SUM(VacationHours * 8.00) AS TotalPayment
FROM HumanResources.Employee;

SELECT ProductCategoryID, COUNT(*) AS SubcategoryCount
FROM Production.ProductSubcategory
GROUP BY ProductCategoryID;

SELECT TerritoryID, COUNT(*) AS CustomerCount
FROM Sales.Customer
GROUP BY TerritoryID;

SELECT CustomerID, SUM(SubTotal) AS TotalPurchase
FROM Sales.SalesOrderHeader
WHERE CustomerID = 29672
GROUP BY CustomerID;

SELECT CardType, COUNT(*) AS CardCount
FROM Sales.CreditCard
GROUP BY CardType;

SELECT LineTotal,
       CASE
           WHEN LineTotal > 2000.00 THEN LineTotal * 0.82
           WHEN LineTotal > 1500.00 THEN LineTotal * 0.86
           WHEN LineTotal > 1000.00 THEN LineTotal * 0.90
           ELSE LineTotal
       END AS TotalWithDiscount
FROM Sales.SalesOrderDetail;

