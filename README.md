# SQL Practice – Task 2: Data Insertion and Null Handling

This repository contains the SQL script used for practicing data insertion, null value handling, updating, and deleting records.

##  Task Objective

> Learn how to:
- Create tables
- Insert data with and without NULLs
- Use default values
- Perform UPDATE and DELETE operations


##  Tables Created

1. **Authors**
   - `author_id` (INTEGER, Primary Key)
   - `name` (TEXT, NOT NULL)
   - `birth_year` (INTEGER, can be NULL)

2. **Books**
   - `book_id` (INTEGER, Primary Key)
   - `title` (TEXT, NOT NULL)
   - `author_id` (INTEGER, Foreign Key)
   - `published_year` (INTEGER, Default 2023)
   - `genre` (TEXT)

##  Sample Operations

- Insert authors with and without birth_year
- Insert books with and without genre/year
- Update missing fields using `UPDATE`
- Delete unlinked or test entries using `DELETE`

##  DB Fiddle Link

> [View and edit the live DB Fiddle here](https://www.db-fiddle.com/)  
(https://www.db-fiddle.com/f/eCKwGd3Jum2kBpC76n7BfG/1)





