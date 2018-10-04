SELECT TOP 1 CustomerName, SUM(OrderQuantity*UnitPrice)AS 'Purchase Amount'
	from CUSTOMER_T
		JOIN ORDER_T
			ON CUSTOMER_T.CustomerID = ORDER_T.CustomerID
		JOIN ORDER_LINE_T
			ON ORDER_LINE_T.OrderID = ORDER_T.OrderID
		JOIN PRODUCT_T
			ON PRODUCT_T.ProductID = ORDER_LINE_T.ProductID
		GROUP BY CustomerName
		ORDER BY [Purchase Amount] DESC