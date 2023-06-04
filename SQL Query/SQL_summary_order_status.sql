CREATE PROCEDURE summary_order_status
    @StatusID INT
AS
	SELECT fo.OrderID, dc.CustomerName, dp.ProductName, fo.Quantity, ds.StatusOrder
    FROM FactSalesOrder fo
    JOIN DimCustomer dc ON fo.CustomerID = dc.CustomerID
    JOIN DimProduct dp ON fo.ProductID = dp.ProductID
    JOIN DimStatusOrder ds ON fo.StatusID = ds.StatusID
    WHERE ds.StatusID = @StatusID