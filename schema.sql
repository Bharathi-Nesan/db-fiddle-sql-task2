CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birth_year INTEGER
);
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author_id INTEGER,
    published_year INTEGER DEFAULT 2023,
    genre TEXT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);