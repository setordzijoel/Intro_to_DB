USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books(
    book_id INTEGER PRIMARY KEY NOT NULL,
    title VARCHAR(130),
    author_id INTEGER,
    price FLOAT,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Authors(
    author_id INTEGER PRIMARY KEY NOT NULL,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INTEGER PRIMARY KEY NOT NULL,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
    order_id INTEGER PRIMARY KEY NOT NULL,
    customer_id INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details(
    orderdetailid INTEGER PRIMARY KEY NOT NULL,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);