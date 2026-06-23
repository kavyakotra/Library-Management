
Create database librarymanagement;
use librarymanagement;

-- creating a table authors

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Creating a table called book

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear INT,
    Quantity INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- creating member table

CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    MembershipDate DATE
);

-- Creating borrow table

CREATE TABLE Borrowing (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Inserting values

INSERT INTO Authors (FirstName, LastName) VALUES
('J.K.', 'Rowling'),
('George', 'Orwell'),
('J.R.R.', 'Tolkien'),
('Isaac', 'Asimov'),
('Agatha', 'Christie'),
('Mark', 'Twain'),
('F. Scott', 'Fitzgerald'),
('Jane', 'Austen'),
('Arthur', 'Conan Doyle'),
('Ernest', 'Hemingway'),
('Leo', 'Tolstoy'),
('Charles', 'Dickens'),
('Mary', 'Shelley'),
('H.G.', 'Wells'),
('Edgar', 'Allan Poe'),
('Herman', 'Melville'),
('Virginia', 'Woolf'),
('Gabriel', 'García Márquez');



INSERT INTO Books (Title, AuthorID, Genre, PublishedYear, Quantity) VALUES
('Harry Potter and the Sorcerer\'s Stone', 1, 'Fantasy', 1997, 10),
('1984', 2, 'Dystopian', 1949, 5),
('The Hobbit', 3, 'Fantasy', 1937, 7),
('Foundation', 4, 'Science Fiction', 1951, 8),
('Murder on the Orient Express', 5, 'Mystery', 1934, 12),
('The Adventures of Tom Sawyer', 6, 'Adventure', 1876, 10),
('The Great Gatsby', 7, 'Fiction', 1925, 6),
('Pride and Prejudice', 8, 'Romance', 1813, 9),
('Harry Potter and the Chamber of Secrets', 1, 'Fantasy', 1998, 10),
('Animal Farm', 2, 'Dystopian', 1945, 7),
('The Lord of the Rings', 3, 'Fantasy', 1954, 5),
('Sherlock Holmes: A Study in Scarlet', 9, 'Mystery', 1887, 6),
('The Old Man and the Sea', 10, 'Literary Fiction', 1952, 8),
('War and Peace', 11, 'Historical Fiction', 1869, 4),
('A Tale of Two Cities', 12, 'Historical Fiction', 1859, 9),
('Frankenstein', 13, 'Science Fiction', 1818, 7),
('The War of the Worlds', 14, 'Science Fiction', 1898, 5),
('The Raven', 15, 'Poetry', 1845, 6),
('Moby Dick', 16, 'Adventure', 1851, 3),
('To the Lighthouse', 17, 'Literary Fiction', 1927, 5),
('One Hundred Years of Solitude', 18, 'Magical Realism', 1967, 7);





INSERT INTO Members (FirstName, LastName, MembershipDate) VALUES
('John', 'Doe', '2023-01-15'),
('Jane', 'Smith', '2023-02-20'),
('Sam', 'Brown', '2023-03-05'),
('Alice', 'Johnson', '2023-03-15'),
('Bob', 'Williams', '2023-04-10'),
('Charlie', 'Davis', '2023-05-22'),
('Diana', 'Miller', '2023-06-30'),
('Eve', 'Wilson', '2023-07-14'),
('Frank', 'Parker', '2023-03-18'),
('Helen', 'Clark', '2023-04-22'),
('Tom', 'Evans', '2023-05-28'),
('Emily', 'Adams', '2023-06-05'),
('Victor', 'Hughes', '2023-07-19'),
('Grace', 'Turner', '2023-08-01'),
('Liam', 'Martin', '2023-08-08'),
('Sophia', 'Lewis', '2023-08-10'),
('Olivia', 'White', '2023-08-15'),
('James', 'Hall', '2023-08-20');




INSERT INTO Borrowing (MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, '2023-08-01', NULL),
(2, 2, '2023-08-05', '2023-08-12'),
(3, 3, '2023-08-07', NULL),
(1, 4, '2023-08-10', NULL),  -- Alice Johnson borrowing "Foundation"
(2, 5, '2023-08-12', '2023-08-19'),  -- Bob Williams borrowed and returned "Murder on the Orient Express"
(3, 6, '2023-08-15', NULL),  -- Charlie Davis borrowing "The Adventures of Tom Sawyer"
(4, 7, '2023-08-17', NULL),  -- Diana Miller borrowing "The Great Gatsby"
(5, 8, '2023-08-19', NULL),  -- Eve Wilson borrowing "Pride and Prejudice"
(1, 9, '2023-08-20', NULL),  -- Alice Johnson borrowing "Harry Potter and the Chamber of Secrets"
(2, 10, '2023-08-22', NULL), -- Bob Williams borrowing "Animal Farm"
(3, 11, '2023-08-24', NULL), -- Charlie Davis borrowing "The Lord of the Rings"
(6, 19, '2023-08-11', NULL),  -- Frank Parker borrowing "Sherlock Holmes: A Study in Scarlet"
(7, 20, '2023-08-12', NULL),  -- Helen Clark borrowing "The Old Man and the Sea"
(8, 21, '2023-08-13', NULL),  -- Tom Evans borrowing "War and Peace"
(9, 22, '2023-08-14', '2023-08-19'),  -- Emily Adams borrowed and returned "A Tale of Two Cities"
(10, 23, '2023-08-15', NULL),  -- Victor Hughes borrowing "Frankenstein"
(11, 24, '2023-08-16', NULL),  -- Grace Turner borrowing "The War of the Worlds"
(12, 25, '2023-08-17', NULL),  -- Liam Martin borrowing "The Raven"
(13, 26, '2023-08-18', '2023-08-23'),  -- Sophia Lewis borrowed and returned "Moby Dick"
(14, 27, '2023-08-19', NULL),  -- Olivia White borrowing "To the Lighthouse"
(15, 28, '2023-08-20', NULL),  -- James Hall borrowing "One Hundred Years of Solitude"
(6, 1, '2023-08-21', NULL),  -- Frank Parker borrowing "Harry Potter and the Sorcerer's Stone"
(7, 2, '2023-08-22', NULL),  -- Helen Clark borrowing "1984"
(8, 3, '2023-08-23', NULL),  -- Tom Evans borrowing "The Hobbit"
(9, 4, '2023-08-24', NULL),  -- Emily Adams borrowing "Foundation"
(10, 5, '2023-08-25', NULL), -- Victor Hughes borrowing "Murder on the Orient Express"
(11, 6, '2023-08-26', NULL), -- Grace Turner borrowing "The Adventures of Tom Sawyer"
(12, 7, '2023-08-27', NULL), -- Liam Martin borrowing "The Great Gatsby"
(13, 8, '2023-08-28', NULL), -- Sophia Lewis borrowing "Pride and Prejudice"
(14, 9, '2023-08-29', NULL), -- Olivia White borrowing "Sherlock Holmes: A Study in Scarlet"
(15, 10, '2023-08-30', NULL); -- James Hall borrowing "The Old Man and the Sea"


INSERT INTO Books (Title, AuthorID, Genre, PublishedYear, Quantity) VALUES
('Sherlock Holmes: A Study in Scarlet', 9, 'Mystery', 1887, 6),
('The Old Man and the Sea', 10, 'Literary Fiction', 1952, 8),
('War and Peace', 11, 'Historical Fiction', 1869, 4),
('A Tale of Two Cities', 12, 'Historical Fiction', 1859, 9),
('Frankenstein', 13, 'Science Fiction', 1818, 7),
('The War of the Worlds', 14, 'Science Fiction', 1898, 5),
('The Raven', 15, 'Poetry', 1845, 6),
('Moby Dick', 16, 'Adventure', 1851, 3),
('To the Lighthouse', 17, 'Literary Fiction', 1927, 5),
('One Hundred Years of Solitude', 18, 'Magical Realism', 1967, 7);




show tables;
select * from borrowing;

show tables;

-- Find all books borrowed by John.

SELECT 
    CONCAT(m.firstname, ' ', m.lastname) AS Full_name, b.title
FROM
    borrowing AS br
        JOIN
    Books AS b ON br.bookid = b.bookid
        JOIN
    members AS m ON br.memberid = m.memberid
WHERE
    m.firstname LIKE 'John%';
    
-- List all available books (i.e., not borrowed)

SELECT 
    bookid, title
FROM
    books
WHERE
    bookid NOT IN (SELECT 
            bookid
        FROM
            borrowing);

-- Count the total number of books by each author
SELECT 
    CONCAT(a.firstname, ' ', a.lastname) AS authors_name,
    COUNT(CONCAT(a.firstname, ' ', a.lastname)) cnt
FROM
    authors a
        JOIN
    books b ON a.authorid = b.authorid
GROUP BY authors_name
ORDER BY cnt DESC;

-- List all books by a genre: (Easy)
SELECT DISTINCT
    genre, title
FROM
    books
ORDER BY genre DESC;

-- List members who haven't borrowed any books: (Easy)
SELECT DISTINCT
    CONCAT(firstname, ' ', lastname) AS Full_name
FROM
    members
WHERE
    memberid NOT IN (SELECT 
            memberid
        FROM
            borrowing)
ORDER BY full_name ASC;

-- Find the total number of books available in the library across all titles: (Easy)
SELECT 
    SUM(quantity) total_books
FROM
    books;

-- List all authors who have written more than one book in the library: (Easy)


SELECT 
    *
FROM
    (SELECT 
        CONCAT(firstname, ' ', lastname) Full_name,
            COUNT(CONCAT(firstname, ' ', lastname)) cnt
    FROM
        authors a
    JOIN books b ON a.authorid = b.authorid
    GROUP BY full_name
    ORDER BY cnt DESC) temp1
WHERE
    cnt > 1;

-- Find the average number of books borrowed by each member: (Easy)

SELECT 
    ROUND(AVG(cnt)) AS average
FROM
    (SELECT 
        CONCAT(firstname, ' ', lastname) Full_name,
            COUNT(CONCAT(firstname, ' ', lastname)) cnt
    FROM
        borrowing br
    JOIN members m ON br.memberid = m.memberid
    GROUP BY full_name) temp2;
            
-- List all books that have never been borrowed: (Easy)


SELECT 
    bookid, title
FROM
    books
WHERE
    bookid NOT IN (SELECT 
            bookid
        FROM
            borrowing);

-- Find the books borrowed within a specific date range (e.g., between '2023-08-01' and '2023-08-15'): (Easy)

select b.title, br.borrowdate from books b
join 
borrowing br
on 
b.bookid = br.bookid
where borrowdate between '2023-08-01' and '2023-08-15'
order by br.borrowdate desc;

-- Determine the most popular genre in the library based on the number of books borrowed (Easy)

select b.genre, count(b.genre) cnt from books b
join borrowing br
on
b.bookid = br.bookid
group by b.genre
order by cnt desc
limit 1;



-- Intermediate
-- Find overdue books (books that have not been returned in 30 days): (Intermediate)

SELECT 
    CONCAT(firstname, ' ', lastname) full_name,
    b.title,
    DATEDIFF(CURDATE(), br.borrowdate) date_overdue
FROM
    borrowing br
        JOIN
    books b ON b.bookid = br.bookid
        JOIN
    members m ON br.memberid = m.memberid
ORDER BY date_overdue DESC;

-- Find all books currently borrowed by members (Intermediate)


SELECT 
    CONCAT(firstname, ' ', lastname) full_name, b.title
FROM
    borrowing br
        JOIN
    books b ON b.bookid = br.bookid
        JOIN
    members m ON br.memberid = m.memberid;

-- Identify members who have borrowed more than one book: (Intermediate)

SELECT 
    *
FROM
    (SELECT 
        CONCAT(firstname, ' ', lastname) full_name,
            COUNT(CONCAT(firstname, ' ', lastname)) cnt
    FROM
        borrowing br
    JOIN books b ON b.bookid = br.bookid
    JOIN members m ON br.memberid = m.memberid
    GROUP BY full_name
    ORDER BY cnt DESC) temp3
WHERE
    cnt > 1;


-- List all overdue books along with the days overdue (consider a book overdue if it hasn't been returned within 30 days): (intermediate)




-- List all books and their corresponding authors that have been borrowed at least twice: (Intermediate)

select * from (
			select concat(firstname, ' ', lastname) Full_name,
						count(concat(firstname, ' ', lastname)) cnt

			from books b
			join borrowing br
			on
			b.bookid = br.bookid
			join
			authors a
			on
			b.authorid = a.authorid
			group by full_name
			order by cnt desc
            ) temp4
where cnt >= 2;


/* Find the difference in the number of books borrowed between two specific members
(e.g., 'John Doe' and 'Alice Johnson'): (Intermediate) */

		
select
		(select 
				count(concat(firstname, ' ', lastname)) cnt
		from borrowing br
		join 
		members m
		on
		br.memberid = m.memberid
		where concat(firstname, ' ', lastname) like 'john%'
		group by concat(firstname, ' ', lastname))
		-
		(select 
				count(concat(firstname, ' ', lastname)) cnt
		from borrowing br
		join 
		members m
		on
		br.memberid = m.memberid
		where concat(firstname, ' ', lastname) like 'alice%'
		group by concat(firstname, ' ', lastname)) difference;
        
-- Identify all members who borrowed books by a specific author (e.g., 'George Orwell'): (Intermediate)

select concat(a.firstname, ' ', a.lastname) author_name,
		concat(m.firstname, ' ', m.lastname) full_name	
from books b
join authors a
on
b.authorid = a.authorid
join
borrowing br
on
b.bookid = br.bookid
join
members m
on
br.memberid = m.memberid
where concat(a.firstname, ' ', a.lastname) like '%Row%';

-- Advanced
-- Find the most borrowed book (Advanced)

select title, cnt from 
		(select b.title, count(b.title) cnt,
        dense_rank() over (order by count(b.title) desc) rankss
        from borrowing br
		join books b
		on
		br.bookid = b.bookid
		group by b.title
		order by cnt desc) temp5
where rankss = 1;


-- Identify the member who has borrowed the most books (Advanced)

select * from 
		(select concat(m.firstname, ' ', m.lastname) Full_name, 
        count(concat(firstname, ' ', lastname)) cnt,
        dense_rank() over (order by count(b.title) desc) rankss
        from borrowing br
		join books b
		on
		br.bookid = b.bookid
        join
        members m
        on br.memberid = m.memberid
		group by full_name
		order by cnt desc) temp5
where rankss = 1;














