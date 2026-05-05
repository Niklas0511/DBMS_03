-- Authors
INSERT INTO Author VALUES (1, 'Date',         'C. J.',     'a');
INSERT INTO Author VALUES (2, 'Ramakrishnan', 'Raghu',     'b');
INSERT INTO Author VALUES (3, 'Gehrke',       'Johannes',  'c');

-- Books
INSERT INTO Book VALUES ('978-0-201-96426-4', 'An Introduction to Database Systems', 2004);
INSERT INTO Book VALUES ('978-0-072-46563-1', 'Database Management Systems',         2002);
INSERT INTO Book VALUES ('978-0-13-110362-7', 'The C Programming Language',          1988);

-- Authorship
INSERT INTO writes VALUES (1, '978-0-201-96426-4');
INSERT INTO writes VALUES (2, '978-0-072-46563-1');
INSERT INTO writes VALUES (3, '978-0-072-46563-1');

-- Copies
INSERT INTO Copy VALUES (1, 'A-01', 'a', '978-0-201-96426-4');
INSERT INTO Copy VALUES (2, 'A-02', 'b', '978-0-201-96426-4');
INSERT INTO Copy VALUES (3, 'B-07', 'c', '978-0-072-46563-1');
INSERT INTO Copy VALUES (4, 'C-12', 'd', '978-0-13-110362-7');

-- Members
INSERT INTO Member VALUES (101, 'Müller',     'Anna',  'a.mueller@stud.thga.de',   '2025-10-01');
INSERT INTO Member VALUES (102, 'Schneider', 'Björn', 'b.schneider@stud.thga.de', '2025-10-01');
INSERT INTO Member VALUES (103, 'Koch',      'Clara', 'c.koch@stud.thga.de',      '2026-04-01');

-- Loans
INSERT INTO Loan VALUES (1, '2026-04-09', '2026-04-23', 101, 1);
INSERT INTO Loan VALUES (2, '2026-04-09', NULL,         102, 3);
INSERT INTO Loan VALUES (3, '2026-04-16', NULL,         101, 2);
