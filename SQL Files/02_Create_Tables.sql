USE LibraryDB;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);
CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    category VARCHAR(50),
    copies INT,
    FOREIGN KEY(author_id)
    REFERENCES Authors(author_id)
);
USE LibraryDB;

CREATE TABLE Members(
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100)
);
USE LibraryDB;

CREATE TABLE Borrow(
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY(member_id)
        REFERENCES Members(member_id),
    FOREIGN KEY(book_id)
        REFERENCES Books(book_id)
);