USE LibraryDB;

INSERT INTO Authors VALUES
(1,'J.K. Rowling'),
(2,'Chetan Bhagat'),
(3,'Ruskin Bond');

INSERT INTO Books VALUES
(101,'Harry Potter',1,'Fantasy',5),
(102,'Five Point Someone',2,'Fiction',3),
(103,'The Blue Umbrella',3,'Children',2);

INSERT INTO Members VALUES
(201,'Rahul','9876543210','Delhi'),
(202,'Priya','9876543211','Mumbai'),
(203,'Kiran','9876543212','Hyderabad');

INSERT INTO Borrow VALUES
(1,201,101,'2026-07-01','2026-07-15',NULL),
(2,202,102,'2026-07-02','2026-07-16','2026-07-10'),
(3,203,103,'2026-07-03','2026-07-17',NULL);