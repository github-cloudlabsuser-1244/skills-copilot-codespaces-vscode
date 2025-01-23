-- create a table with 5 coloumns customer_id, customer_fname, customer_lname, customer_phone, customer_address
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_fname VARCHAR(100),
    customer_lname VARCHAR(100),
    customer_phone VARCHAR(100),
    customer_address VARCHAR(100)
);

-- fill in 5 rows in customers table
INSERT INTO customers (customer_fname, customer_lname, customer_phone, customer_address) VALUES ('John', 'Doe', '1234567890', '123 Main St');
INSERT INTO customers (customer_fname, customer_lname, customer_phone, customer_address) VALUES ('Jane', 'Doe', '1234567890', '123 Main St');
INSERT INTO customers (customer_fname, customer_lname, customer_phone, customer_address) VALUES ('Alice', 'Smith', '1234567890', '123 Main St');
INSERT INTO customers (customer_fname, customer_lname, customer_phone, customer_address) VALUES ('Bob', 'Smith', '1234567890', '123 Main St');
INSERT INTO customers (customer_fname, customer_lname, customer_phone, customer_address) VALUES ('Charlie', 'Brown', '1234567890', '123 Main St');

-- show the data in customers table
SELECT * FROM customers;