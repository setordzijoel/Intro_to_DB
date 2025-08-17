CREATE DATABASE alx_book_store;

CREATE TABLE IF NOT EXIST Books (
    book_id INTEGER PRIMARY KEY NOT NULL,
    title VARCHAR(130),
    author_id INTEGER,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXIST Authors (
    author_id INTEGER PRIMARY KEY NOT NULL,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXIST Customers (
    customer_id INTEGER PRIMARY KEY NOT NOT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXIST Orders (
    order_id INTEGER PRIMARY KEY NOT NULL,
    customer_id INTEGER,
    order_date DATE
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXIST Order_Details (
    orderdetailid INTEGER PRIMARY KEY NOT NOT,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE
);