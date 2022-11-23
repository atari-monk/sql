CREATE TABLE Person (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name varchar(255) NOT NULL,
    Surname varchar(255) NOT NULL,
    IdNumber varchar(255) NOT NULL,
    DateOfBirth datetime2 NOT NULL
);

CREATE TABLE AddressType (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Name varchar(255) NOT NULL
);

CREATE TABLE Address (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    AddressTypeId int NOT NULL FOREIGN KEY REFERENCES AddressType(Id),
    PersonId int NOT NULL FOREIGN KEY REFERENCES Person(Id),
    Street varchar(255) NOT NULL,
    Number varchar(255) NOT NULL,
	City varchar(255) NOT NULL
);