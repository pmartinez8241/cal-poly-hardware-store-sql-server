SELECT EmployeeFirstName, EmployeeLastName, CustomerName, ORDER_T.OrderID, OrderDate, DueDate,  ORDER_LINE_T.ProductID
,ProductDescription, OrderQuantity, UnitPrice
FROM EMPLOYEE_T
	JOIN CUSTOMER_T
		ON EMPLOYEE_T.EmployeeID=CUSTOMER_T.SalesRepID
	JOIN ORDER_T
		ON ORDER_T.CustomerID = CUSTOMER_T.CustomerID
	JOIN ORDER_LINE_T
		ON ORDER_T.OrderID = ORDER_LINE_T.OrderID
	JOIN PRODUCT_T
		ON PRODUCT_T.ProductID = ORDER_LINE_T.ProductID
ORDER BY SalesRepID, CustomerName, OrderID