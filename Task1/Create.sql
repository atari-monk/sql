CREATE TABLE Osoby (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Imie varchar(255),
    Nazwisko varchar(255),
    Pesel varchar(255),
    Data_urodzenia datetime2
);

CREATE TABLE Rodzaj_adresu (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Nazwa varchar(255)
);

CREATE TABLE Adresy (
    Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    RodzajId int FOREIGN KEY REFERENCES Rodzaj_adresu(Id),
    OsobaId int FOREIGN KEY REFERENCES Osoby(Id),
    Ulica varchar(255),
    Numer varchar(255),
	Miasto varchar(255)
);

INSERT INTO Rodzaj_adresu (Nazwa)
VALUES ('Zameldowania');
INSERT INTO Rodzaj_adresu (Nazwa)
VALUES ('Zamieszkania');
INSERT INTO Rodzaj_adresu (Nazwa)
VALUES ('Korespondencyjny');

INSERT INTO Osoby (Imie, Nazwisko)
VALUES ('Patrycja', 'Gajewska');
INSERT INTO Osoby (Imie, Nazwisko)
VALUES ('Adam', 'Kowalski');

INSERT INTO Adresy (RodzajId, OsobaId, Ulica)
VALUES ('1', '2', 'UlicaA');

SELECT o.[Id]
      ,[Imie]
      ,[Nazwisko]
      ,[Pesel]
      ,[Data_urodzenia]
  FROM [dbo].[Osoby] AS o
  INNER JOIN Adresy ON o.Id!=Adresy.OsobaId;