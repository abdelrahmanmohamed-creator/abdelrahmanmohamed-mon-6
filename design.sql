/*abdelrahmanmohamed-mon-6*/

1-
CREATE DATABASE store_Management collate "utf8mb4_unicode_ci"

2-
CREATE TABLE supplier(
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL ,
email VARCHAR(255) NOT NULL UNIQUE,
breifdata TEXT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (product-id) REFERENCES product(id)
);

3-
CREATE TABLE store(
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
address TEXT NOT null,
supplier-id INTEGER UNSIGNED,     /* will be foregin key for supplier id (primary key) to make relationship */
PRIMARY KEY (id),
FOREIGN KEY (supplier-id) REFERENCES supplier(id)
);

4-
CREATE TABLE product(
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL ,
code INTEGER UNSIGNED NOT null,
description TEXT NOT NULL,
price DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (governorates-id) REFERENCES governorates(id)
);

5-
CREATE TABLE govrnorates(
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

/* db.sql queries */

1-
SELECT DISTINCT orderNumber ,productCode , priceEach FROM orderdetails
WHERE productCode like "S18%" AND priceEach > 100

2-
SELECT paymentDate FROM payments
WHERE month(paymentDate)=5
or month(paymentDate)=6
OR year(paymentDate)=5 
or year(paymentDate)=6

3-
SELECT * FROM customers
WHERE country='usa' AND phone LIKE"%5555%"
ORDER BY creditLimit DESC
LIMIT 1 OFFSET 4