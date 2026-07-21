USE LibraryDB;

DELIMITER $$

CREATE TRIGGER CheckCopies
BEFORE UPDATE ON Books
FOR EACH ROW
BEGIN
    IF NEW.copies < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Copies cannot be negative';
    END IF;
END $$

DELIMITER ;

UPDATE Books
SET copies = -5
WHERE book_id = 101;