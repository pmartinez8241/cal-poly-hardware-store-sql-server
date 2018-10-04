SELECT PRODUCT_T.ProductID ,ProductDescription , UnitPrice, ProductCost, PurchasedQuantity, SUM(ProductCost*PurchasedQuantity) 
AS 'Amount Spent'
FROM PRODUCT_T
	Join PRODUCT_SUPPLIER_T
		ON PRODUCT_T.ProductID = PRODUCT_SUPPLIER_T.ProductID
	JOIN SUPPLIER_T
		ON SUPPLIER_T.SupplierID = PRODUCT_SUPPLIER_T.SupplierID
	GROUP BY PRODUCT_T.ProductID, ProductDescription, UnitPrice, ProductCost, PurchasedQuantity
	ORDER BY [Amount Spent] DESC