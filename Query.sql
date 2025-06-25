-- Insert author with all fields
INSERT INTO Authors (author_id, name, birth_year)
VALUES (5, 'Dan Brown', 1964);

-- Insert author with NULL birth year
INSERT INTO Authors (author_id, name, birth_year)
VALUES (6, 'New Author', NULL);

-- Insert book with default published_year (omitting it)
INSERT INTO Books (book_id, title, author_id, genre)
VALUES (106, 'Inferno', 5, 'Thriller');

-- Insert book with NULL genre
INSERT INTO Books (book_id, title, author_id, published_year, genre)
VALUES (107, 'Origin', 5, 2017, NULL);

-- Insert book without author (set author_id = NULL)
INSERT INTO Books (book_id, title, author_id, published_year, genre)
VALUES (108, 'Unassigned Book', NULL, 2021, 'General');

-- Update birth_year where it's missing (NULL)
UPDATE Authors
SET birth_year = 1970
WHERE birth_year IS NULL;

-- Change genre of a book
UPDATE Books
SET genre = 'Mystery'
WHERE book_id = 107;

-- Set published_year to current default if missing
UPDATE Books
SET published_year = 2023
WHERE published_year IS NULL;

-- Update book title based on old one
UPDATE Books
SET title = 'Origin (Updated)'
WHERE title = 'Origin';

-- Update author name using id
UPDATE Authors
SET name = 'Anonymous Writer'
WHERE author_id = 6;

-- Delete books with unknown authors
DELETE FROM Books
WHERE author_id IS NULL;

-- Delete authors whose name is 'Anonymous Writer'
DELETE FROM Authors
WHERE name = 'Anonymous Writer';

-- Delete books with NULL genre
DELETE FROM Books
WHERE genre IS NULL;

-- Delete specific book by ID
DELETE FROM Books
WHERE book_id = 107;

-- Delete all authors born before 1900
DELETE FROM Authors
WHERE birth_year IS NOT NULL AND birth_year < 1900;

select * from Authors;
select * from Books;