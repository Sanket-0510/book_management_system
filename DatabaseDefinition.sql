-- create_tables_and_database.sql

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS projectdb;

-- Use the 'projectdb' database
USE projectdb;

-- Create 'books' table if it doesn't exist
CREATE TABLE IF NOT EXISTS books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(255),
    Author VARCHAR(255),
    Stream VARCHAR(255),
    Class VARCHAR(255),
    Available VARCHAR(3),
    NumPrint INT
);

-- Create 'student' table if it doesn't exist
CREATE TABLE IF NOT EXISTS student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    Stream VARCHAR(255),
    Class VARCHAR(255),
    Address VARCHAR(255),
    NumBooks INT
);

-- Create 'issue' table if it doesn't exist
CREATE TABLE IF NOT EXISTS issue (
    IssueID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    ClientName VARCHAR(255), -- Added this column
    BookID INT,
    BookName VARCHAR(255), -- Added this column
    Address VARCHAR(255),
    IssueDate DATE,
    ReturnDate DATE,
    SStream VARCHAR(255),
    SClass VARCHAR(255),
    FOREIGN KEY (ClientID) REFERENCES student(StudentID),
    FOREIGN KEY (BookID) REFERENCES books(BookID)
);

-- Create 'return detail' table if it doesn't exist
CREATE TABLE IF NOT EXISTS returndetail (
    ReturnID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    ClientName VARCHAR(255),
    BookID INT,
    BookName VARCHAR(255),
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (ClientID) REFERENCES student(StudentID),
    FOREIGN KEY (BookID) REFERENCES books(BookID)
);
