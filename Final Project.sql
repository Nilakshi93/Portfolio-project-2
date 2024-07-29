

CREATE DATABASE banks_CRM;

USE banks_CRM;

-- Create the fact table
CREATE TABLE CustomerInteractions
(
Customer_ID INT NOT NULL,
Product_ID CHAR(3) NOT NULL,
Channel_ID VARCHAR(20) NULL DEFAULT "No channel",
Interaction_Date DATE NOT NULL,
Interaction_Type VARCHAR(20) NULL,
Employee_ID INT NULL,
Account_ID INT NOT NULL
);

select *
from CustomerInteractions;

-- Creating the dimension tables

CREATE TABLE Customers
(
Customer_ID INT NOT NULL PRIMARY KEY,
First_Name VARCHAR(30) NOT NULL,
Last_Name VARCHAR(30) NOT NULL,
Address VARCHAR(225) NULL,
Phone_Number INT NULL,
Email_ID VARCHAR(50) NULL
);

CREATE TABLE Accounts
(
Account_ID INT NOT NULL Primary KEY,
Product_ID CHAR(3) NOT NULL,
Customer_ID INT,
Balance Decimal(15,2)


);

select *
from Customers;

CREATE TABLE Products
(
Product_ID CHAR(3) NOT NULL PRIMARY KEY,
Product_Name VARCHAR(25) NOT NULL,
Product_Type VARCHAR(25) NULL
);

CREATE TABLE Channels_ALL
(
Channel_ID VARCHAR(20) NOT NULL DEFAULT "No channel" PRIMARY KEY,
Channel_Name VARCHAR(25) NOT NULL,
Channel_Type VARCHAR(20) NOT NULL
);

CREATE TABLE Dates
(
Interaction_Date DATE NOT NULL PRIMARY KEY,
Week_Nu INT NOT NULL,
Month INT NOT NULL,
Year INT NOT NULL
);

CREATE TABLE Customers_Consent
(
Customer_ID INT NOT NULL, 
Interaction_Type VARCHAR(20) NOT NULL PRIMARY KEY,
Consent_Date DATE NOT NULL,
Opt_in_method VARCHAR (30) NULL
);

CREATE TABLE Employees
(
Employee_ID INT NOT NULL PRIMARY KEY,
Employee_Name VARCHAR(30) NOT NULL,
Department VARCHAR(25) NULL,
Role  VARCHAR(25) NULL,
Branch_ID INT NOT NULL
);


CREATE TABLE Locations
(
Branch_ID INT NOT NULL PRIMARY KEY,
Branch_Name VARCHAR(30) NOT NULL,
Address VARCHAR(100) NOT NULL
);

-- Insering data to each dimension table
INSERT INTO Customers
(Customer_ID,First_Name,Last_Name,Address,Phone_Number,Email_ID )
VALUES
(1111,"John","Smith","123 Main St, Anytown, CA 12345","555123456", "john.smith@email.com"),
(1112,"Jane","Doe","456 Elm St, Anytown, CA 12345",	"555789012", "jane.doe@email.com"),
(1113,"William","Johnson","789 Oak St, Anytown, CA 12345","555456789",	"william.johnson@email.com"),	
(1114,	"Mary",	"Brown","101 First St, Anytown, CA 12345",	"555234567","mary.brown@email.com"),	
(1115,	"David","Miller","202 Second St, Anytown, CA 12345","555890123","david.miller@email.com"),
(1116,	"Samantha",	"Garcia","303 Third St, Anytown, CA 12345","555567890","samantha.garcia@email.com "),	
(1117,	"Michael",	"Wilson","404 Fourth St, Anytown, CA 12345","555234109","michael.wilson@email.com"),	
(1118,	"Sarah","Taylor","505 Fifth St, Anytown, CA 12345",	"555789456","sarah.taylor@email.com"),	
(1119,	"Emily","Davis","606 Sixth St, Anytown, CA 12345","555345231","emily.davis@email.com"),	
(1120,	"Robert","Thomas","707 Seventh St, Anytown, CA 12345","555987065","robert.thomas@email.com"),	
(1121,	"Lisa",	"Hernandez","808 Eighth St, Anytown, CA 12345",	"555123789","lisa.hernandez@email.com	"),
(1122,	"Daniel","Lewis","909 Ninth St, Anytown, CA 12345",	"555456098","daniel.lewis@email.com"),	
(1123,	"Jennifer",	"Walker","1000 Maple St, Anytown, CA 12345","555789345","jennifer.walker@email.com"),	
(1124,	"Christopher","Moore","1101 Oak St, Anytown, CA 12345"	,"555567230","christopher.moore@email.com"	),
(1125,	"Elizabeth","Ramirez","1202 Elm St, Anytown, CA 12345","555234897"	,"elizabeth.ramirez@email.com"),
(1126,	"Matthew",	"Garcia","1303 Third St, Anytown, CA 12345"	,"555987124","matthew.garcia@email.com	"),
(1127,	"Susan","Miller","1404 Fourth St, Anytown, CA 12345","555345780","susan.miller@email.com"	),
(1128,	"Mark",	"Davis","1505 Fifth St, Anytown, CA 12345"	,"555890568",	"mark.davis@email.com	"),
(1129,	"Katherine","Brown","1606 Sixth St, Anytown, CA 12345"	,"555249876",	"katherine.brown@email.com"),
(1130,	"Angela","Lopez","2108 Pine St, Anytown, CA 12345"	,"555789230",	"angela.lopez@email.com"),
(1131,	"Thomas","Lee","2209 Spruce St, Anytown, CA 12345"	,"555345087",	"thomas.lee@email.com"),
(1132,	"Barbara","Robinson","2310 Cedar St, Anytown, CA 12345"	,"555136543","barbara.robinson@email.com"),
(1133,	"Paul",	"Allen","2411 Birch St, Anytown, CA 12345","555567976","paul.allen@email.com"),
(1134,	"Linda","Hernandez"	,"2512 Willow St, Anytown, CA 12345","558903452",	"linda.hernandez@email.com"),
(1135,	"David","Moore","2613 Sycamore St, Anytown, CA 12345","555247891","david.moore@email.com"),
(1136,	"Susan","Wilson","2714 Poplar St, Anytown, CA 12345","555975674",	"susan.wilson@email.com"),
(1137,	"Michael","Walker",	"2815 Walnut St, Anytown, CA 12345"	,"555351230",	"michael.walker@email.com"),
(1138,	"Sarah","Miller",	"2916 Chestnut St, Anytown, CA 12345","555796543",	"sarah.miller@email.com"),
(1139,	"Christopher","Lopez","3017 Maple St, Anytown, CA 12345","555123560","christopher.lopez@email.com");



-- Altering the data type for a column
ALTER TABLE Customers
MODIFY COLUMN Phone_Number VARCHAR(15);

Select *
from Customers;

INSERT INTO accounts
(Account_ID,Product_ID,Customer_ID,Balance)
VALUES
(00101,111, 1111, 100505.23),
(00102,116,1112, 9050.12),
(00105,111,1113,8690.23),
(00106,116,1114, 67890.23),
(00107,111,1115,1001.23),
(00108,222,1116,2005.43),
(00109,111,1117,3009.23),
(00110,116,1118, 100.13),
(00111,255,1119,200.34),
(00112,300,1120,3023.23),
(00113,411,1121,2034.23),
(00114,417,1123,2340.12),
(00115,455,1124,4562.34),
(00116,255,1125,5678.34),
(00117,300,1126,6789.30),
(00118,411,1128,4567.89),
(00119,417,1129,6890.45),
(00120,455,1130,8903.43),
(00121,111,1131,6789.34),
(00122,116,1132,9087.56),
(00123,111,1133, 5678.45),
(00124, 116,1134, 8907.56),
(00125,417,1135,9078.34)
;

INSERT INTO accounts (Account_ID,Product_ID,Customer_ID,Balance)
VALUES (00126,455,1136,8904.78),
(00127,255,1137, 6789.89),
(00128,300,1138,78904.56),
(00129,455,1139, 6789.05),
(00130,111,1131, 6789.67),
(00131,116,1128,6754.34),
(00132,111,1129,89765.34),
(00133,116,1130,456.32);



INSERT INTO Products
(Product_ID,Product_Name,Product_Type )
VALUES
(111, "Current Account", "Bank Account"),
(116, "Savings Account", "Bank Account"),
(222, "Credit Card", "Loan"),
(255,"Personal Loan", "Loan"),
(300,"Mortgage", "Loan"),
(311, "Investment", "Investment"),
(411, "Home Insurance","Insurance"),
(417,"Motor Insurance", "Insurance"),
(455,"Retirement Account", "Investment");

Select *
from Products;

INSERT INTO Channels_ALL
(Channel_ID,Channel_Name,Channel_Type)
VALUES
(444,"Internet Banking","Online" ),
(334, "Email", "Online"),
(336, "Phone ", "Voice"),
(448, "Branch", "Physical"),
(558,"Messaging", "Digital"),
(778, "ATM", "Physical"),
(556,"Mobile App", "Online");

Select *
from Channels_ALL;


-- Altering the data type for a column
ALTER TABLE dates
MODIFY COLUMN Month VARCHAR(15);


INSERT INTO dates
(Interaction_Date,Week_Nu,Month,Year)
VALUES
('2023-01-16', 3, 'January', 2023),
('2023-01-17', 3, 'January', 2023),
('2023-01-18', 3, 'January', 2023),
('2023-01-19', 3, 'January', 2023),
('2023-01-25', 4, 'January', 2023),
('2023-01-27', 4, 'January', 2023),
('2023-02-25', 8, 'February', 2023),
('2023-03-12', 10, 'March', 2023),
('2023-04-09', 15, 'April', 2023),
('2023-04-22', 16, 'April', 2023),
('2023-05-19', 20, 'May', 2023),
('2023-05-31', 22, 'May', 2023),
('2023-06-15', 24, 'June', 2023),
('2023-07-01', 26, 'July', 2023),
('2023-08-05', 31, 'August', 2023),
('2023-08-10', 32, 'August', 2023),
('2023-08-20', 33, 'August', 2023),
('2023-08-30', 35, 'August', 2023),
('2023-09-15', 37, 'September', 2023),
('2023-09-16', 37, 'September', 2023),
('2023-09-30', 39, 'September', 2023),
('2023-10-15', 41, 'October', 2023),
('2023-11-25', 47, 'November', 2023),
('2023-11-26', 47, 'November', 2023),
('2023-12-05', 49, 'December', 2023),
('2023-12-26', 52, 'December', 2023);

INSERT INTO dates (Interaction_Date,Week_Nu,Month,Year)
VALUES ('2023-06-29',25,'June', 2023);

INSERT INTO Customers_Consent
(Interaction_Type,Consent_Date,Opt_in_method)
VALUES
('Email','2023-01-15','Website Form'),
( 'SMS','2023-02-20','Text message'  ),
('Phone' ,'2023-03-05','Phone Call'),
('Mail','2023-05-12','Paper Form'),
('Push Notifications','2023-07-18',	'Text messages'),
('Third Party Sharing',	'2023-12-25','Email Link'),
('Internet Bankin','2023-02-20','IB campaign');

 
INSERT INTO Employees
(Employee_ID,Employee_Name,Department,Role,Branch_ID)
VALUES
(1, 'John Doe', 'HR', 'Manager',111),
(2, 'Jane Smith', 'Finance', 'Analyst',112),
(3, 'Alex Johnson', 'Marketing', 'Coordinator',113),
(4, 'Emily Brown', 'Sales', 'Associate',114),
(5, 'Michael Wilson', 'IT', 'Developer',111),
(6, 'Sarah Clark', 'HR', 'Assistant',112),
(7, 'David Lee', 'Finance', 'Manager',113),
(8, 'Olivia Garcia', 'Marketing', 'Manager',114),
(9, 'James Taylor', 'Sales', 'Manager',111),
(10, 'Sophia Martinez', 'IT', 'Designer',112),
(11, 'William Rodriguez', 'HR', 'Coordinator',113),
(12, 'Ava Hernandez', 'Finance', 'Associate',112),
(13, 'Daniel Nguyen', 'Marketing', 'Assistant',111),
(14, 'Emma Gonzalez', 'Sales', 'Analyst',114),
(15, 'Liam Perez', 'IT', 'Support',114),
(16, 'Mia Carter', 'HR', 'Analyst',114),
(17, 'Ethan Turner', 'Finance', 'Coordinator',113),
(18, 'Ella King', 'Marketing', 'Associate',113),
(19, 'Noah Scott', 'Sales', 'Assistant',112),
(20, 'Chloe Baker', 'IT', 'Manager',111);

select *
from Employees;


INSERT INTO Locations
(Branch_ID,Branch_Name,Address)
VALUES
(111, 'Main Branch','123 Main Street Wakefield UK'),
(112,'North Branch','101 North Avenue, Leeds, UK'),
(113,'Central Branch', '404 Central Park,York, UK'),
(114,'Oak Branch','1111 Oak Street, Manchester, UK');

-- Insert data in to fact table
INSERT INTO CustomerInteractions
(Customer_ID,Product_ID,Channel_ID,Interaction_Date,Interaction_Type,Employee_ID,Account_ID)
VALUES
(1111,111,444,'2023-07-01','Email',1,00101),
(1112,116,334,'2023-01-16','SMS',2,00102),
(1113,111,'336','2023-01-27','Phone',3,00105),
(1114,116,448,'2023-02-25','Mail',4,00106),
(1115,111,558,'2023-08-30','Push Notifications',5,00107),
(1116,222,778,'2023-09-30','Third Party Sharing',6,00108),
(1117,111,556,'2023-09-16','Email', 7,00109),
(1118,116,444,'2023-09-15','SMS',8,00110),
(1119,255,334,'2023-10-15','Phone',9,00111),
(1120,300,336,'2023-08-20','Mail',10,00112),
(1121,411,448,'2023-01-25','Push Notifications',11,00113),
(1123,417,558,'2023-01-25','Third Party Sharing',12,00114),
(1124,455,778,'2023-11-25','Internet Bankin',13,00115),
(1125,255,556,'2023-12-26','Internet Bankin',14,00116),
(1126,300,444,'2023-12-26','Phone',15,00117),
(1128,411,334,'2023-12-05','Mail',16,00118),
(1129,417,336,'2023-12-05','Third Party Sharing',17,00119),
(1130,455,448,'2023-08-10','Push Notifications'	,18,00120),
(1131,	111	,558,'2023-12-05','Internet Bankin',	19,00121),
(1132,	116,778,'2023-12-05','Email',20,00122),
(1133,111,	556,'2023-04-22','SMS',	17,00123),
(1134,	116,	444,'2023-08-05','Phone',18,00124),
(1135,	417,	334,'2023-05-19','Mail',19,00125),
(1136,	455,	336,'2023-06-15','Email',20,00126),
(1137,	255,	448,'2023-06-15','Email',6,00127),
(1138,	300	,558,'2023-03-12','Email',7,00128),
(1139,	455,	778,'2023-06-29','Email',8,00129),
(1131,	111,	556,'2023-06-15','Email',9,00130),
(1132,	116,	444,'2023-03-12','Email',10,00131),
(1128,	116,	334,'2023-04-09','SMS',	1,00132),
(1129,	111,	336,'2023-04-09','Phone',2,00132),
(1130,	116,	448,'2023-03-12','Mail',3,00133);


-- Adding foreign keys
ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Customer_ID)
REFERENCES Customers(Customer_ID);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Product_ID)
REFERENCES Products(Product_ID);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Channel_ID)
REFERENCES Channels_ALL(Channel_ID);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Interaction_Date)
REFERENCES dates(Interaction_Date);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Interaction_Type)
REFERENCES Customers_Consent(Interaction_Type);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Employee_ID)
REFERENCES Employees(Employee_ID);

ALTER TABLE Employees
ADD CONSTRAINT 
foreign key (Branch_ID)
REFERENCES Locations(Branch_ID);

ALTER TABLE CustomerInteractions
ADD CONSTRAINT 
foreign key (Account_ID)
REFERENCES accounts(Account_ID);


Select count(Customer_ID)
from CustomerInteractions a
Inner join Customers_Consent b
on a.Interaction_Type=b.Interaction_Type
WHERE Opt_in_method='Paper Form';

USE bank_CRM;

-- Using joins
-- How many customers can we contact via email and what are the products they are holding?
SELECT count(distinct customer_ID),A.Product_ID,Product_Name
FROM Customerinteractions A
JOIN products B
ON A. Product_ID= B.Product_ID
WHERE  Interaction_type="email"
GROUP BY 2,3;

-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis 
-- LIST of customers who consented as a result of IB campaingn and their details
SELECT Consent_Date, Opt_in_method,First_Name,Last_Name,Address
FROM customers_consent A
JOIN 
(SELECT D.Customer_ID,First_Name,Last_Name,Address,Interaction_Type
FROM customers C
JOIN customerinteractions D
ON C.Customer_ID=D.Customer_ID
)B
ON A.Interaction_Type=B.Interaction_Type
WHERE Opt_in_method='IB campaign';

-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis 
-- Count of customers serviced more than twice by colleagues in Leeds and Manchester branches
SELECT count(distinct customer_ID),Employee_Name,Branch_ID
FROM Customerinteractions A
JOIN employees B
ON A.Employee_ID = B.Employee_ID
WHERE Branch_ID IN(112,114)
GROUP BY 2,3
HAVING COUNT(B.Employee_ID)>=2;

-- Create a view that uses at least 3-4 base tables;
-- prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
-- A view that combines a snapshot of customers details, associated branch and consent type
CREATE VIEW Customersview AS
SELECT
	b.Customer_ID,	
    b.First_Name,
    b.Last_Name,
    b.Email_ID,
    b.Address,
    c.Employee_ID,
    c.Branch_ID,
    d.Interaction_Type,
    d.Opt_in_method
   
FROM customerinteractions A
JOIN customers B ON A.Customer_ID=B.Customer_ID
JOIN customers_consent D ON A.Interaction_Type=D.Interaction_Type
JOIN employees C ON A.Employee_ID= C.Employee_ID
WHERE d.Interaction_Type IN("Email", "SMS", "Phone")
WITH CHECK OPTION;

SELECT * FROM Customersview;
    
SELECT Customer_ID,First_Name,Employee_ID,Branch_ID,Interaction_Type
FROM Customersview
WHERE Opt_in_method= "Phone call"
order by Branch_ID;


-- In your database, create a stored function that can be applied to a query in your DB
-- A function to retrieve the count of consents for a customer
DELIMITER //
CREATE FUNCTION GetConsentCount( Customer_ID INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE  ConsentCount INT;
    
    SELECT COUNT(*) INTO ConsentCount
    FROM customerinteractions A
    INNER JOIN customers_consent B
    ON A.Interaction_Type=B.Interaction_Type
	WHERE A.Customer_ID = Customer_ID;
    
    RETURN ConsentCount;
END //
DELIMITER ;
  
SELECT GetConsentCount(A.Customer_ID), First_Name,Last_Name,Product_ID
FROM customerinteractions A
INNER JOIN customers B
ON A.Customer_ID=B.Customer_ID; 

USE banks_crm;

-- In your database, create a stored procedure and demonstrate how it runs
-- This is calculating the total balance for each customer ID

DELIMITER //
CREATE PROCEDURE CalculateTotalBalancc(IN p_Customer_ID INT)
BEGIN
	SELECT SUM(Balance) 
    FROM accounts
    where Product_ID IN( 111,222)
    and Customer_ID=p_Customer_ID;
   
END//

CALL CalculateTotalBalancc(1111);

-- In your database, create a trigger and demonstrate how it runs

-- Adding a new column to accounts table
ALTER TABLE accounts
ADD  COLUMN AccountStatus VARCHAR(20) DEFAULT 'Active';

SELECT *
FROM accounts;

-- Creating a trigger to set account status to Active whenever a new row is entered. 

DELIMITER //

CREATE TRIGGER UpdateAccountStatus
BEFORE INSERT ON accounts
	FOR EACH ROW 
    SET NEW.AccountStatus ='Active';
	END //
    
DELIMITER ;
-- Inserting a new  account details

INSERT INTO accounts(Account_ID,Product_ID,Customer_ID,Balance)
VALUES(00135,111,1112, 9051.12);

SELECT *
FROM accounts;

-- In your database, create an event and demonstrate how it runs
-- Adding a column to account stable
ALTER TABLE accounts
ADD  COLUMN Eligibility VARCHAR(20) DEFAULT 'No';

-- An event to set customer's eligibility for a promotion

DELIMITER //
CREATE EVENT EligibilityForPromotion
	ON SCHEDULE EVERY 1 MONTH
    DO BEGIN
			UPDATE accounts
		    SET Eligibility= 'Yes'
            where Balance>10000;
	
	END //
    DELIMITER ;    

SET GLOBAL event_scheduler = ON;

select *
from accounts;



