SELECT PRODUCT_T.ProductID, ProductDescription, UnitPrice
FROM PRODUCT_T
	JOIN PRODUCT_PRICE_HISTORY_T
		ON PRODUCT_T.ProductID = PRODUCT_PRICE_HISTORY_T.ProductID
		AND YEAR(StartDate) = YEAR('2014')
ORDER BY PRODUCT_T.ProductID