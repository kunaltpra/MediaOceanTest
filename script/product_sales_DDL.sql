-- create database
DROP DATABASE IF EXISTS mocean;
CREATE DATABASE IF NOT EXISTS mocean;
USE mocean;


-- DDL for ProductTable
DROP TABLE IF EXISTS ProductTable;
CREATE TABLE IF NOT EXISTS ProductTable (
  ProductID int(10) NOT NULL AUTO_INCREMENT,
  ProductName varchar(100) NOT NULL,
  PRIMARY KEY (ProductID)
) ;


-- DDL for SalesEntry
DROP TABLE IF EXISTS SalesEntry;
CREATE TABLE IF NOT EXISTS SalesEntry (
  SalesId int(10) NOT NULL AUTO_INCREMENT,
  DateOfSale date NOT NULL,
  ProductID int(10) NOT NULL,
  SaleAmount float NOT NULL,
  PRIMARY KEY (SalesId),
  KEY FK_ProductID (ProductID),
  CONSTRAINT FK_ProductID FOREIGN KEY (ProductID) REFERENCES ProductTable (ProductID) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;