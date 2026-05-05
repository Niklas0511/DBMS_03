SELECT CopyNo
FROM Copy
WHERE ShelfLocation LIKE 'A%';

SELECT Title, PublicationYear
FROM Book;

SELECT isbn, ShelfLocation
FROM Copy
WHERE ShelfLocation >='B';

SELECT
    m.FirstName || ' ' || m.LastName AS FullName,
    b.Title
FROM Loan l
JOIN Member m ON l.member_no = m.MemberNo
JOIN Copy c   ON l.copy_no   = c.CopyNo
JOIN Book b   ON c.isbn      = b.ISBN
WHERE l.ReturnDate IS NULL;

SELECT m.full_name,
       COUNT(l.loan_id) AS active_loans
FROM   member AS m
LEFT OUTER JOIN loan AS l
    ON m.member_no = l.member_no
   AND l.return_date IS NULL
GROUP BY m.member_no, m.full_name;

SELECT
    b.Title,
    c.CopyNo
FROM Copy c
JOIN Book b ON c.isbn = b.ISBN

EXCEPT

SELECT
    b.Title,
    c.CopyNo
FROM Copy c
JOIN Book b ON c.isbn = b.ISBN
JOIN Loan l ON c.CopyNo = l.copy_no;
