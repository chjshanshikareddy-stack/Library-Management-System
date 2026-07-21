USE LibraryDB;

CREATE VIEW Borrow_Details AS
SELECT
    Borrow.borrow_id,
    Members.member_name,
    Books.title,
    Borrow.issue_date,
    Borrow.due_date,
    Borrow.return_date
FROM Borrow
JOIN Members
ON Borrow.member_id = Members.member_id
JOIN Books
ON Borrow.book_id = Books.book_id;

SELECT * FROM Borrow_Details;