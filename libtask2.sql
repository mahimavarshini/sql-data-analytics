CREATE DATABASE libtask2DB;

USE libtask2DB;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Borrowing (
    borrowing_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Books (book_id, title, author, category, price)
VALUES
(101, 'Java Basics', 'Jock', 'Programming', 500),
(102, 'SQL Guide', 'John', 'Database', 400),
(103, 'Python Basics', 'Robert', 'Programming', 600),
(104, 'Data Science', 'David', 'Technology', 700),
(105, 'Computer Networks', 'Andrew', 'Networking', 550);

INSERT INTO Members (member_id, member_name, email, phone)
VALUES
(1, 'Sri', 'sri@gmail.com', '9876543210'),
(2, 'Kumar', 'kumar@gmail.com', '9876543211'),
(3, 'Sarvani', 'sarvani@gmail.com', '9876543212'),
(4, 'Chinnu', 'chinnu@gmail.com', '9876543213');

INSERT INTO Borrowing
(borrowing_id, member_id, book_id, borrow_date, return_date)
VALUES
(1, 1, 101, '2026-08-01', '2026-08-10'),
(2, 2, 102, '2026-08-03', '2026-08-12'),
(3, 3, 103, '2026-08-05', NULL),
(4, 1, 104, '2026-08-08', NULL);

SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Borrowing;