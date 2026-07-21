USE LibraryDB;

UPDATE Books
SET copies = copies - 1
WHERE book_id = 101;

SELECT * FROM Books;

DELETE FROM Borrow
WHERE member_id = 203;

DELETE FROM Members
WHERE member_id = 203;

SELECT * FROM Members;