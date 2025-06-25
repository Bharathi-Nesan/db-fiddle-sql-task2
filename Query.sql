-- INSERTION
INSERT INTO Authors (author_id, name, birth_year)
VALUES (5, 'Dan Brown', 1964);


INSERT INTO Authors (author_id, name, birth_year)
VALUES (6, 'New Author', NULL);


INSERT INTO Books (book_id, title, author_id, genre)
VALUES (106, 'Inferno', 5, 'Thriller');


INSERT INTO Books (book_id, title, author_id, published_year, genre)
VALUES (107, 'Origin', 5, 2017, NULL);


INSERT INTO Books (book_id, title, author_id, published_year, genre)
VALUES (108, 'Unassigned Book', NULL, 2021, 'General');

-- UPDATION
UPDATE Authors
SET birth_year = 1970
WHERE birth_year IS NULL;


UPDATE Books
SET genre = 'Mystery'
WHERE book_id = 107;


UPDATE Books
SET published_year = 2023
WHERE published_year IS NULL;


UPDATE Books
SET title = 'Origin (Updated)'
WHERE title = 'Origin';


UPDATE Authors
SET name = 'Anonymous Writer'
WHERE author_id = 6;

-- DELETION
DELETE FROM Books
WHERE author_id IS NULL;


DELETE FROM Authors
WHERE name = 'Anonymous Writer';


DELETE FROM Books
WHERE genre IS NULL;


DELETE FROM Books
WHERE book_id = 107;


DELETE FROM Authors
WHERE birth_year IS NOT NULL AND birth_year < 1900;

select * from Authors;
select * from Books;