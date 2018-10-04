SELECT TOP 1 EmployeeFirstName, EmployeeLastName,SUM(PRODUCT_T.UnitPrice*ORDER_LINE_T.OrderQuantity) 
AS 'TOTAL SALES AMOUNT'
FROM EMPLOYEE_T
	join CUSTOMER_T
		ON EMPLOYEE_T.EmployeeID = SalesRepID
	join ORDER_T
		ON CUSTOMER_T.CustomerID = ORDER_T.CustomerID
	join ORDER_LINE_T
		ON ORDER_LINE_T.OrderID = ORDER_T.OrderID
	join PRODUCT_T
		on PRODUCT_T.ProductID = ORDER_LINE_T.ProductID
GROUP BY EmployeeFirstName, EmployeeLastName
ORDER BY [TOTAL SALES AMOUNT] DESC;