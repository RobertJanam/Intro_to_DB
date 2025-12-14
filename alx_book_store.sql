USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    CONSTRAINT fk_Authors FOREIGN KEY (author_id) REFERENCES Authors (author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);