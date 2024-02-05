# Lab 1:
# Challenge 2:

CREATE DATABASE IF NOT EXISTS Lab1;

Use Lab1;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars(ID INT AUTO_INCREMENT PRIMARY KEY,
				  VIN VARCHAR(60), 
				  manufacturer VARCHAR(60), 
				  model VARCHAR(60), 
				  year INT, 
				  color VARCHAR(60));

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(ID INT AUTO_INCREMENT PRIMARY KEY,
					   customer_ID INT, 
					   name CHAR(60), 
					   phone_number VARCHAR(60), 
					   email VARCHAR(60), 
					   address VARCHAR(60),
					   city CHAR(60), 
					   state_province CHAR(60), 
					   country CHAR(60),
					   zip_postal VARCHAR(60));
     
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons(ID INT AUTO_INCREMENT PRIMARY KEY,
						  staff_ID INT, 
						  name CHAR(60), 
						  store CHAR(60));

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices(ID INT AUTO_INCREMENT PRIMARY KEY,
					  invoice_number INT, 
					  date VARCHAR(60), 
					  car INT,
                      customer INT,
                      salesperson INT,
                      FOREIGN KEY(car) REFERENCES cars(id),
                      FOREIGN KEY(customer) REFERENCES customers(id),
                      FOREIGN KEY(salesperson) REFERENCES salespersons(id));
                           
                           