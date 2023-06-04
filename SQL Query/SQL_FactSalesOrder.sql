USE DWH_Project;

CREATE TABLE FactSalesOrder (
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
	Amount INT NOT NULL,
    StatusID INT NOT NULL,
	OrderDate DATE NOT NULL,

	FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
    FOREIGN KEY (StatusID) REFERENCES DimStatusOrder(StatusID)
);