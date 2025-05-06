-- Question 1
CREATE TABLE ProductDetail(
orderID INT,
customerName VARCHAR(200),
products VARCHAR (200)
);
INSERT INTO ProductDetail (orderID,customerName,products)
VALUES(101,'John Doe','laptop'),
(101,'John Doe','mouse'),
(102,'Jane Smith','tablet'),
(102,'Jane Smith','keyboard'),
(102,'Jane Smith','mouse'),
(103,'Emily Clark','phone');

-- Question 2

CREATE TABLE customers(
orderID INT PRIMARY KEY,
customerName varchar (200)
);

INSERT INTO customers(orderID,customerName)
VALUES(101,'John Doe'),
(102,'Jane Smith'),
(103,'Emily Clark');


CREATE TABLE orders(
orderID INT,
products VARCHAR(200),
quantity INT,
PRIMARY KEY (orderID, products),
FOREIGN KEY (orderID) REFERENCES customers(orderID)
);

INSERT INTO orders(orderID,products,quantity)
VALUES(101,'laptop',2),
(101,'mouse',1),
(102,'tablet',3),
(102,'keyboard',1),
(102,'mouse',2),  
(102,'phone',1);
