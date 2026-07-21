USE LibraryDB;

SELECT COUNT(*) AS TotalBooks
FROM Books;

SELECT SUM(copies) AS TotalCopies
FROM Books;

SELECT
    category,
    COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY category;

SELECT
    Books.title,
    COUNT(*) AS TimesBorrowed
FROM Borrow
JOIN Books
ON Borrow.book_id = Books.book_id
GROUP BY Books.title;