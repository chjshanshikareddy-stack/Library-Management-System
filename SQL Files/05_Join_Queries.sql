USE LibraryDB;

SELECT
    Members.member_name,
    Books.title,
    Borrow.issue_date,
    Borrow.due_date
FROM Borrow
JOIN Members
ON Borrow.member_id = Members.member_id
JOIN Books
ON Borrow.book_id = Books.book_id;

SELECT
    Books.title,
    Authors.author_name
FROM Books
JOIN Authors
ON Books.author_id = Authors.author_id;