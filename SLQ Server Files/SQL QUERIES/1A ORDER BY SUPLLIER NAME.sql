SELECT PRODUCT_T.ProductID, ProductDescription, PRODUCT_SUPPLIER_T.SupplierID, SupplierName, VendorPartID, ProductCost
FROM PRODUCT_SUPPLIER_T
Inner Join PRODUCT_T on PRODUCT_SUPPLIER_T.ProductID = PRODUCT_T.ProductID
Inner Join SUPPLIER_T on PRODUCT_SUPPLIER_T.SupplierID = SUPPLIER_T.SupplierID
order by SupplierName,ProductCost ASC;