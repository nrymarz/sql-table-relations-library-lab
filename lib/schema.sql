CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER
);
CREATE TABLE subgenres (
    name TEXT,
    id INTEGER PRIMARY KEY
);
CREATE TABLE authors (
    name TEXT,
    id INTEGER PRIMARY KEY
);
CREATE TABLE books (
    title TEXT,
    year INTEGER,
    series_id INTEGER,
    id INTEGER PRIMARY KEY
);
CREATE TABLE characters (
    name TEXT,
    species TEXT,
    motto TEXT,
    author_id INTEGER,
    id INTEGER PRIMARY KEY
);
CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
);