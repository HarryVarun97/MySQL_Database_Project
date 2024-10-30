MySQL_Database_Project
MySQL Database Project :-

Scenario :

Based in Chicago, Illinois, Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. The chefs draw inspiration from Italian, Greek, and Turkish culture and have a menu of 12–15 items that they rotate seasonally. The restaurant has a rustic and relaxed atmosphere with moderate prices, making it a popular place for a meal any time of the day.

Little Lemon is owned by two Italian brothers, Mario and Adrian, who moved to the United States to pursue their shared dream of owning a restaurant. To craft the menu, Mario relies on family recipes and his experience as a chef in Italy. Adrian does all the marketing for the restaurant and led the effort to expand the menu beyond classic Italian to incorporate additional cuisines from the Mediterranean region.

Prerequisites :

You must first create the Little Lemon database in MySQL. You must also have the Customers, Bookings and Courses tables created and populated with relevant data as shown below.

The code to create the database is as follows :
CREATE DATABASE IF NOT EXISTS Little_Lemon;

The code to use the database is as follows :
USE Little_Lemon;

The code to create the Customers table is as follows :
CREATE TABLE Customers(

CustomerID INT NOT NULL PRIMARY KEY,

FullName VARCHAR(100) NOT NULL,

PhoneNumber INT NOT NULL UNIQUE );

The code to populate the Customers table is as follows :
INSERT INTO Customers(CustomerID, FullName, PhoneNumber) VALUES

(1, "Vanessa McCarthy", 0757536378),

(2, "Marcos Romero", 0757536379),

(3, "Hiroki Yamane", 0757536376),

(4, "Anna Iversen", 0757536375),

(5, "Diana Pinto", 0757536374),

(6, "Altay Ayhan", 0757636378),

(7, "Jane Murphy", 0753536379),

(8, "Laurina Delgado", 0754536376),

(9, "Mike Edwards", 0757236375),

The Customers table content is shown in the following screenshot :
![240170351-20422fe3-a46b-4fbf-a688-6254e18da266](https://github.com/user-attachments/assets/eeb0570b-94ac-47de-906a-54c3c9387213)



The code to create the Bookings table is as follows :
CREATE TABLE Bookings(BookingID INT, BookingDate DATE,TableNumber INT, NumberOfGuests INT,CustomerID INT);

The code to populate the Bookings table with data is as follows :
INSERT INTO Bookings

(BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID)

VALUES

(10, '2021-11-10', 7, 5, 1),

(11, '2021-11-10', 5, 2, 2),

(12, '2021-11-10', 3, 2, 4),

(13, '2021-11-11', 2, 5, 5),

(14, '2021-11-11', 5, 2, 6),

(15, '2021-11-11', 3, 2, 7),

(16, '2021-11-11', 3, 5, 1),

(17, '2021-11-12', 5, 2, 2),

(18, '2021-11-12', 3, 2, 4),

(19, '2021-11-13', 7, 5, 6),

(20, '2021-11-14', 5, 2, 3),

(21, '2021-11-14', 3, 2, 4);

The Bookings table is shown in the following screenshot:

![Screenshot (534)](https://github.com/user-attachments/assets/776ac08c-93ea-45c2-aeec-22d6aaf2e825)


The code to create the restaurant Courses table is as follows :
CREATE TABLE Courses (CourseName VARCHAR(255) PRIMARY KEY, Cost Decimal(4,2));

The code to populate the restaurant's Courses table with data is as follows :
INSERT INTO Courses (CourseName, Cost) VALUES

("Greek salad", 15.50),

("Bean soup", 12.25),

("Pizza", 15.00),

("Carbonara", 12.50),

("Kabasa", 17.00),

("Shwarma", 11.30);

The Courses table is shown in the following screenshot :

![Screenshot (535)](https://github.com/user-attachments/assets/03bd7715-4428-408f-bb94-d146959a2f85)


This activity has two main objectives :

Recap of all topics introduced in MySQL.

Provide experience with developing core database queries.

Task Instructions :

Task 1: Filter data using the WHERE Clause and Logical Operators.

Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13.

The expected output result should be the same as shown in the following screenshot :

![Screenshot (536)](https://github.com/user-attachments/assets/48bf198c-2585-400c-97de-d66c82e7f135)


Task 2: Create a JOIN Query.

Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11.

The expected output result should be the same as that shown in the following screenshot :

![Screenshot (537)](https://github.com/user-attachments/assets/1332fcb7-18e8-4576-aa5b-3e3c1f78cf81)


Task 3: Create a GROUP BY Query.

Create a SQL statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate.

The expected output result should be the same as that shown in the following screenshot :

![Screenshot (538)](https://github.com/user-attachments/assets/e145f6ae-1810-454a-babb-239c7cd48911)


Task 4: Create a REPLACE Statement.

Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. The expected output result should be the same as that shown in the following screenshot :

![Screenshot (539)](https://github.com/user-attachments/assets/abee3357-6647-4c84-bd9c-f4dae31502c5)


Task 5: Create Constraints.

Create a new table called "DeliveryAddress" in the Little Lemon database with the following columns and constraints :

ID: INT PRIMARY KEY

Address: VARCHAR(255) NOT NULL

Type: NOT NULL DEFAULT "Private"

CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table

The expected table structure should be the same as that shown in the following screenshot :

![Screenshot (540)](https://github.com/user-attachments/assets/f7356104-9223-44fc-a808-edaf524c53c2)


Task 6: Alter Table Structure.

Create a SQL statement that adds a new column called 'Ingredients' to the Courses table.

Ingredients: VARCHAR(255)
Once the column has been added, the table's new structure should be the same as shown in the following screenshot :

![Screenshot (541)](https://github.com/user-attachments/assets/8064a065-a995-41f5-94dc-670cfe603d4e)


Task 7: Create a Subquery.

Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11.

The expected output result of your query should be similar to the output in the following screenshot :

![Screenshot (542)](https://github.com/user-attachments/assets/bb173e37-0bd9-4425-ad6d-8d9504f3a2f4)


Task 8: Create a Virtual Table.

Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.

Select all data from the BookingsView virtual table. The expected output result should be the same as shown in the following screenshot:

![Screenshot (543)](https://github.com/user-attachments/assets/54a350c8-a1c5-43b2-88b0-389864dd8c2a)


Task 9: Create a Stored Procedure.

Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". This parameter retrieves all data from the Bookings table based on the user input of the date.

After executing the query, call the "GetBookingsData" with '2021-11-13' as the input date passed to the stored procedure to show all bookings made on that date. The expected output of the CALL statement should be the same as the following screenshot :

![Screenshot (544)](https://github.com/user-attachments/assets/022cc490-5a9f-4817-a86d-41ed76fb20d6)


Task 10: Use the String Function.

Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example:

ID: 10,

Date: 2021-11-10,

Number of guests: 5

The expected output result should be similar to the following screenshot (notice the table title "Booking Details") :

![Screenshot (545)](https://github.com/user-attachments/assets/47acd47e-bb39-4e29-8a75-558dac6f1618)

