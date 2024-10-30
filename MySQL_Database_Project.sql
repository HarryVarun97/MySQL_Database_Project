use eveningbatch;

-- MySQL Database Project

-- The code to create the database is as follows:

create database if not exists little_lemon;
-- the code to see if the database is created:
show databases;
-- The code to use the database is as follows:
use little_lemon;
-- The code to create the  Customers table is as follows:
CREATE TABLE customers (
    customerID INT NOT NULL PRIMARY KEY,
    fullName VARCHAR(100) NOT NULL,
    PhoneNumber INT NOT NULL UNIQUE
);
-- The code to see if the table is created:
show tables;
-- The  code to populate the customers table is as follows:
insert into customers(customerID, FullName, PhoneNumber)values
(1, "Vanessa McCarthy", 0757536378),
(2, "Marcos Romero", 0757536379),
(3, "Hiroki Yamane", 0757536376),
(4, "Anna Iversen", 0757536375),
(5, "Diana Pinto", 0757536374),
(6, "Altay Ayhan", 0757636378),
(7, "Jane Murphy", 0753536379),
(8, "Laurina Delgado", 0754536376),
(9, "Mike Edwards", 0757236375),
(10, "Karl Pederson", 0757936374);
-- The code to see Customers table:
select * from customers;
-- The code to create the Bookings table is as follows:
CREATE TABLE Bookings (
    BookingID INT,
    BookingDate DATE,
    TableNumber INT,
    NumberOFGuests INT,
    customerID INT
);
-- The code to populate the Bookings table with data is as follows:
insert into  Bookings(BookingID, BookingDate, TableNumber, NumberOFGuests, customerID) values
(10, '2021-11-10',7,5,1),
(11, '2021-11-10',5,2,2),
(12, '2021-11-10',3,2,4),
(13, '2021-11-11', 2, 5, 5),  
(14, '2021-11-11', 5, 2, 6),  
(15, '2021-11-11', 3, 2, 7), 
(16, '2021-11-11', 3, 5, 1),  
(17, '2021-11-12', 5, 2, 2),  
(18, '2021-11-12', 3, 2, 4), 
(19, '2021-11-13', 7, 5, 6),  
(20, '2021-11-14', 5, 2, 3),  
(21, '2021-11-14', 3, 2, 4);
-- The code to see Bookings table:
select * from Bookings;
-- The code to create the restaurant Courses table is as follows:
CREATE TABLE Courses (
    CourseName VARCHAR(255) PRIMARY KEY,
    cost DECIMAL(4 , 2 )
);
-- The code to populate the restaurant's Courses table with data is as follows:
insert into Courses (CourseName, cost) values
("Greek salad", 15.50), 
("Bean soup", 12.25), 
("Pizza", 15.00), 
("Carbonara", 12.50), 
("Kabasa", 17.00), 
("Shwarma", 11.30);
-- The code to see Courses table:
select * from Courses;
-- The code to see all the created tables.
show tables;

-- Filter data using the Where  clause and logical operators.
SELECT 
    *
FROM
    Bookings
WHERE
    BookingDate BETWEEN '2021-11-11' AND '2021-11-13';
    -- Create a join Query.
   SELECT 
    customers.fullName, Bookings.BookingID
FROM
    customers
        RIGHT JOIN
    Bookings ON customers.customerID = Bookings.customerID
WHERE
    BookingDate = '2021-11-11';
-- Create a group by Query.
SELECT 
    BookingDate, COUNT(BookingDate)
FROM
    Bookings
GROUP BY BookingDate;
-- Create a REPLACE Statement and then see the changes made.
replace into Courses (CourseName, Cost) values ( "Kabasa", 20.00);
select  * from Courses;
-- Create Constraints and then see the columns  created in the table 'DeliveryAddress'.
CREATE TABLE DeliveryAddress (
    ID INT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    Type VARCHAR(100) NOT NULL DEFAULT 'Private',
    customerID INT NOT NULL,
    FOREIGN KEY (customerID)
        REFERENCES customers (customerID)
);
show columns from DeliveryAddress;
-- Alter table Structure and then see the  columns from Courses.
alter table courses add column Ingredients varchar(255);
show columns from Courses;
-- Create a Subquery.
SELECT 
    fullName
FROM
    customers
WHERE
    (SELECT 
            customerID
        FROM
            Bookings
        WHERE
            customers.customerID = Bookings.customerID
                AND BookingDate = '2021-11-11');
-- Create a Virtual table and then see the Virtual table.
CREATE VIEW BookingsView AS
    SELECT 
        BookingID, BookingDate, NumberOFGuests
    FROM
        Bookings
    WHERE
        NumberOfGuests > 3
            AND BookingDate < '2021-11-13';
            select * from BookingsView;
-- Create Stored Procedure and then call the Stored Procedure.
create procedure GetBookingsData (InputDate Date)
SELECT 
    *
FROM
    Bookings
WHERE
    BookingDate = InputDate; 
    call GetBookingsData ("2021-11-13");
-- Use the String Function.
SELECT 
    CONCAT('ID: ',
            BookingID,
            ', Date: ',
            BookingDate,
            ', Number Of guests: ',
            NumberOFGuests) AS 'Booking Details'
FROM
    Bookings;
