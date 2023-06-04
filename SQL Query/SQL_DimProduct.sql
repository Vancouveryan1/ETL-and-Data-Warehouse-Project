USE DWH_Project;

CREATE TABLE DimProduct (
    ProductID INT NOT NULL PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    ProductCategory VARCHAR(255) NOT NULL,
	ProductUnitPrice INT
);