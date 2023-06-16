-- Active: 1686896401248@@127.0.0.1@3306@u13_redlin_db
DROP TABLE Pflegearbeiten;
DROP TABLE Objekt;
DROP TABLE Mitarbeiter;
DROP TABLE Tätigkeiten;


CREATE TABLE Objekt(  
    OID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Bezeichnung VARCHAR(50)
);

CREATE TABLE Mitarbeiter(  
    MID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Vorname VARCHAR(50)
);

CREATE TABLE Tätigkeiten(  
    TID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Bezeichnung VARCHAR(50)
);

CREATE TABLE Pflegearbeiten(  
    PID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    OID int,
    MID_Soll int,
    MID_Ist int,
    TID int,
    Datum_Soll DATE,
    Datum_Abschluss DATE,
    FOREIGN KEY (OID) REFERENCES Objekt(OID),
    FOREIGN KEY (MID_Soll) REFERENCES Mitarbeiter(MID),
    FOREIGN KEY (MID_Ist) REFERENCES Mitarbeiter(MID),
    FOREIGN KEY (TID) REFERENCES Tätigkeiten(TID)
);

INSERT INTO Objekt (OID, Bezeichnung)
VALUES ('1', 'Rasenfläche Süd'),
('2', 'Rosengarten'),
('3', 'Tropenhaus');

INSERT INTO Tätigkeiten (TID, Bezeichnung)
VALUES ('1', 'Rosenschnitt'),
('2', 'Rasen mähen'),
('3', 'Unkraut jäten');

INSERT INTO Mitarbeiter (MID, Name, Vorname)
VALUES ('1', 'Rose','Ines'),
('2', 'Baum','Jürgen'),
('31', 'Holz','Walter');