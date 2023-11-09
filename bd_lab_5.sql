CREATE TABLE Pharmasists(
	PharmasistID INT PRIMARY KEY,
    PharmasistName VARCHAR(100),
    PharmasistSurname VARCHAR(100),
    PharmasistsEmail VARCHAR(100),
    PharmasistPhone VARCHAR(100)
);
CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerSurname VARCHAR(100),
    CustomerEmail VARCHAR(100),
    CustomerPhone VARCHAR(100)
);
CREATE TABLE Distributors(
	DistributorID INT PRIMARY KEY,
    DistributorName VARCHAR(100),
    DistributorEmail VARCHAR(100),
    DistributorPhone VARCHAR(100)
);
CREATE TABLE Medicines(
    MedicineID INT PRIMARY KEY,
    MedicineName INT,
    MedicinePrice INT   
);
CREATE TABLE Storage_(
    PlaceInStorage INT PRIMARY KEY,
    MedicineID INT,
    Quantity INT,
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID)
);
CREATE TABLE Receipts(
    ReceiptID INT PRIMARY KEY,
    CustomerID INT,
    PharmasistID INT,
    MedicineID INT,
    Quantity INT,
    Total INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (PharmasistID) REFERENCES Pharmasists(PharmasistID),
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID)
);
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    DistributorID INT,
    PharmasistID INT,
    MedicineID INT,
    Quantity INT,
    Total INT,
    FOREIGN KEY (DistributorID) REFERENCES Distributors(DistributorID),
    FOREIGN KEY (PharmasistID) REFERENCES Pharmasists(PharmasistID),
    FOREIGN KEY (MedicineID) REFERENCES Medicines(MedicineID)
);
