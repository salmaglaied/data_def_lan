CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT idCustomer PRIMARY KEY,
	Customer_Name VARCHAR2(20) CONSTRAINT customername NOT NULL,
    Customert_Tel NUMBER 
);


CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT idProduct PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT Productname NOT NULL,
    Price NUMBER CONSTRAINT positive CHECK (Price>0)
);


CREATE TABLE Orders (
    Product_id VARCHAR2(20),
    Customer_id  VARCHAR2(20)
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT FKcustomer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT FKproduct FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);

ALTER TABLE Product ADD Category VARCHAR2(20),
ALTER TABLE Orders ADD Order_date DATE CONSTRAINT orderdate default sysdate;