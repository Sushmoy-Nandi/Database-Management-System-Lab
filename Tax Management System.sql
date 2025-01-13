create database tax_management_system;
USE tax_management_system;

CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
    Street VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

CREATE TABLE Citizen (
    NID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    AddressID INT,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID) ON DELETE SET NULL
);

CREATE TABLE TaxRates (
    TaxRateID INT PRIMARY KEY,
    TaxType VARCHAR(50),
    RateDescription VARCHAR(255),
    RatePercentage DECIMAL(5, 2),
    EffectiveDate DATE,
    ExpiryDate DATE
);

CREATE TABLE Tax (
    TaxID INT PRIMARY KEY,
    NID INT,
    TaxType VARCHAR(50),
    TaxDescription TEXT,
    TaxBaseAmount DECIMAL(10, 2),
    TaxRateID INT,
    TaxAmount DECIMAL(10, 2),
    DueDate DATE,
    FOREIGN KEY (NID) REFERENCES Citizen(NID) ON DELETE CASCADE,
    FOREIGN KEY (TaxRateID) REFERENCES TaxRates(TaxRateID) ON DELETE SET NULL
);

CREATE TABLE TaxPayment (
    PaymentID INT PRIMARY KEY,
    TaxID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (TaxID) REFERENCES Tax(TaxID) ON DELETE CASCADE
);

CREATE TABLE Audit (
    AuditID INT PRIMARY KEY,
    EntityName VARCHAR(50),
    EntityID INT,
    ChangeDescription TEXT,
    ChangedBy VARCHAR(255),
    ChangeDate DATETIME
);

CREATE TABLE UserRoles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    NID INT,
    RoleID INT,
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    Email VARCHAR(100),
    FOREIGN KEY (NID) REFERENCES Citizen(NID) ON DELETE CASCADE,
    FOREIGN KEY (RoleID) REFERENCES UserRoles(RoleID) ON DELETE SET NULL
);

