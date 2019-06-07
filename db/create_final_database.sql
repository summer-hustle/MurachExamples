DROP DATABASE IF EXISTS CISFinalDB;

CREATE DATABASE CISFinalDB;

USE CISFinalDB;

  
CREATE TABLE User (
    UserID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address1 VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip VARCHAR(50),
    Country VARCHAR(50),
    CreditCardType VARCHAR(50),
    CreditCardNumber VARCHAR(50),
    CreditCardExpirationDate VARCHAR(50),
  
    PRIMARY KEY (UserID)
);
  
CREATE TABLE Invoice(
    InvoiceID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    InvoiceDate DATETIME NOT NULL DEFAULT '1900-01-01 00:00:00',
    TotalAmount FLOAT NOT NULL DEFAULT '0',
    IsProcessed enum('y','n') DEFAULT NULL,
  
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (UserID) REFERENCES User (UserID)
);
  
CREATE TABLE LineItem(
    LineItemID INT NOT NULL AUTO_INCREMENT,
    InvoiceID INT NOT NULL DEFAULT '0',
    ProductID INT NOT NULL DEFAULT '0',
    Quantity INT NOT NULL DEFAULT '0',
  
    PRIMARY KEY (LineItemID),
    FOREIGN KEY (InvoiceID) REFERENCES Invoice (InvoiceID)
);
  
CREATE TABLE Product(
    ProductID INT NOT NULL AUTO_INCREMENT,
    ProductCode VARCHAR(10) NOT NULL DEFAULT '',
    ProductDescription VARCHAR(100) NOT NULL DEFAULT '',
    ProductPrice DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (ProductID)
);
  
INSERT INTO Product VALUES 
  ('1', 's1', 'Earn Your Sleep Outta This World Tee - RED', '25.00'),
  ('2', 's1', 'Chosen Few', '25.00'),
  ('3', 's1', 'Made with Aloha tee', '25.00'),
  ('4', 's1', 'Earn Your Sleep Varsity', '25.00'),
  ('5', 's1', 'Earn Your Sleep TM', '25.00'),
  ('6', 's1', 'Matthew 10:28 T-shirt', '25.00'),
  ('7', 's1', 'Smile no sleep later', '20.00'),
  ('8', 's1', 'Smile now sleep later', '20.00'),
  ('9', 's1', 'Orange Antisleep tee', '25.00'),
  ('10', 's1', 'Earn your sleep athletics', '25.00'),
  ('11', 's1', 'Sleep Slash', '25.00'),
  ('12', 's1', 'Lost at Sea', '25.00'),
  ('13', 's1', 'De La Sleep', '25.00'),
  ('14', 's1', 'Mt. Fuji', '25.00'),
  ('15', 's1', 'Prov.18:22 Shirt', '25.00'),
  ('16', 's1', 'All Star tea', '27.00'),
  ('17', 's1', 'Joe Rut - Genuine Wood Grained Finish', '25.00');
  
