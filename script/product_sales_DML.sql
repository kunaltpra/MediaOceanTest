-- DML
DELETE FROM SalesEntry;
DELETE FROM ProductTable;

INSERT INTO ProductTable (ProductName) values ('Product1');
INSERT INTO ProductTable (ProductName) values ('Product2');
INSERT INTO ProductTable (ProductName) values ('Product3');
INSERT INTO ProductTable (ProductName) values ('Product4');
INSERT INTO ProductTable (ProductName) values ('Product5');
INSERT INTO ProductTable (ProductName) values ('Product6');
INSERT INTO ProductTable (ProductName) values ('Product7');
INSERT INTO ProductTable (ProductName) values ('Product8');
INSERT INTO ProductTable (ProductName) values ('Product9');
INSERT INTO ProductTable (ProductName) values ('Product10');


INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-01',(SELECT ProductID from ProductTable WHERE ProductName='Product1'), 10);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-02',(SELECT ProductID from ProductTable WHERE ProductName='Product1'), 20);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-03',(SELECT ProductID from ProductTable WHERE ProductName='Product2'), 50.5);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-04',(SELECT ProductID from ProductTable WHERE ProductName='Product2'), 60.32);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-05',(SELECT ProductID from ProductTable WHERE ProductName='Product2'), 70);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-06',(SELECT ProductID from ProductTable WHERE ProductName='Product3'), 33);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-07',(SELECT ProductID from ProductTable WHERE ProductName='Product3'), 43.11);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-08',(SELECT ProductID from ProductTable WHERE ProductName='Product3'), 53);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-09',(SELECT ProductID from ProductTable WHERE ProductName='Product4'), 44.90);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-10',(SELECT ProductID from ProductTable WHERE ProductName='Product5'), 1000);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-11',(SELECT ProductID from ProductTable WHERE ProductName='Product5'), 2000);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-12',(SELECT ProductID from ProductTable WHERE ProductName='Product6'), 250);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-13',(SELECT ProductID from ProductTable WHERE ProductName='Product6'), 750);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-14',(SELECT ProductID from ProductTable WHERE ProductName='Product8'), 888);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-15',(SELECT ProductID from ProductTable WHERE ProductName='Product9'), 999);
INSERT INTO SalesEntry(DateOfSale, ProductID, SaleAmount) values ('2014-01-16',(SELECT ProductID from ProductTable WHERE ProductName='Product10'), 10000);
