CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    CONSTRAINT fk_books_author FOREIGN KEY (author_id) REFERENCES Authors (author_id),
    price DOUBLE NOT NULL CHECK (price >= 0),
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
)

CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    CONSTRAINT fk_orderdetails_order FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    book_id INT,
    CONSTRAINT fk_orderdetails_book FOREIGN KEY (book_id) REFERENCES Books (book_id),
    quantity DOUBLE NOT NULL CHECK (quantity > 0)
)