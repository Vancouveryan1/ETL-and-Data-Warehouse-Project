USE DWH_Project;

CREATE TABLE DimStatusOrder (
    StatusID INT NOT NULL PRIMARY KEY,
    StatusOrder VARCHAR(50) NOT NULL,
    StatusOrderDesc VARCHAR(50) NOT NULL
);