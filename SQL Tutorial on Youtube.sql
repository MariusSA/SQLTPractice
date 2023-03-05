--Create Table EmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Create Table EmployeeSalary 
--(EmployeeID int, 
--JobTitle varchar(50), 
--Salary int)

--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')
--(1011, 'Ryan', 'Howard',26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL);

--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

--Selecting Data by using the fieldname(s)

--SELECT *
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT COUNT(LastName)
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--MIN MAX and AVG
--SELECT AVG(Salary)
--FROM EmployeeSalary

--While "master" is selected
--SELECT *
--FROM [SQL Tutorial]..EmployeeSalary

--Where statement
-- ==, <>, <, >, And, Or, Like, Null, Not Null, In

--SELECT * 
--FROM [SQL Tutorial]..EmployeeDemographics
--WHERE FirstName IN ('Pam', 'Angela', 'Toby', 'Kevin')

--Group By, Order By

--SELECT Gender, COUNT(Gender)
--FROM [SQL Tutorial]..EmployeeDemographics
--GROUP BY Gender

--Inner Joins Full/Left/Right/Outer Joins
--See image illustration https://huklee.github.io/2017/01/28/021.SQL-all-kinds-of-join-queries/

--SELECT * FROM [SQL Tutorial]..EmployeeSalary

--SELECT * FROM [SQL Tutorial]..EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM [SQL Tutorial]..EmployeeDemographics
--Full Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM [SQL Tutorial]..EmployeeDemographics
--Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- This Query will not work because only one EmployeeID field may be selected.
--SELECT EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial]..EmployeeDemographics
--Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial]..EmployeeDemographics
Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


















