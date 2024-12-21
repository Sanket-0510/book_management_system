-- Insert sample data into 'books' table
INSERT INTO books VALUES
(1, 'Book1', 'Author1', 'Stream1', 'Class1', 'YES', 5),
(2, 'Book2', 'Author2', 'Stream2', 'Class2', 'YES', 3),
(3, 'Book3', 'Author3', 'Stream3', 'Class3', 'NO', 2);

-- Insert sample data into 'student' table
INSERT INTO student VALUES
(101, 'Student1', 'Stream1', 'Class1', 'Address1', 2),
(102, 'Student2', 'Stream2', 'Class2', 'Address2', 1),
(103, 'Student3', 'Stream3', 'Class3', 'Address3', 0);

-- Insert sample data into 'issue' table
INSERT INTO issue (ClientID, ClientName, BookID, BookName, Address, IssueDate, ReturnDate, SStream, SClass) VALUES
(101, 'John Doe', 1, 'Book1', '123 Main St', '2024-02-01', '2024-02-15', 'Stream1', 'Class1'),
(102, 'Jane Doe', 2, 'Book2', '456 Oak St', '2024-02-05', '2024-02-20', 'Stream2', 'Class2'),
(103, 'Bob Smith', 3, 'Book3', '789 Elm St', '2024-02-10', '2024-02-25', 'Stream3', 'Class3');

-- Insert sample data into 'return detail' table
INSERT INTO returndetail (ClientID, ClientName, BookID, BookName, IssueDate, ReturnDate) VALUES
(101, 'Student1', 1, 'Book1', '2024-02-01', '2024-02-15'),
(102, 'Student2', 2, 'Book2', '2024-02-05', '2024-02-20'),
(103, 'Student3', 3, 'Book3', '2024-02-10', '2024-02-25');
