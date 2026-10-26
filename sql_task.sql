CREATE TABLE authors (
    author_id INTEGER,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    country VARCHAR(50)
);

CREATE TABLE categories (
    category_id INTEGER,
    name VARCHAR(100),
    description TEXT
);

ALTER TABLE authors
ADD COLUMN biography TEXT;

ALTER TABLE authors
RENAME COLUMN country TO nationality;

ALTER TABLE categories
RENAME TO book_categories;

ALTER TABLE book_categories
RENAME TO categories;