                                --DELETE, Truncate, Drop Operation 
                                     --Part – A:
                                     

--Use Deposit_Detail1 table (Altered table of DEPOSIT) 
 
--DEPOSIT_DETAIL 
--Column_Name DataType 
--ANO INT 
--CustomerName VARCHAR(35) 
--BNAME VARCHAR(50) 
--AMOUNT INT 
--PINCODE INT 
--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT<=4000
SELECT * FROM DEPOSIT_DETAIL
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'
SELECT * FROM DEPOSIT_DETAIL
--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>102 AND ANO<105
SELECT * FROM DEPOSIT_DETAIL
--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='AJNI' OR BNAME='POWAI'
SELECT * FROM DEPOSIT_DETAIL
--5. Delete all the accounts whose account number is NULL.
DELETE FROM DEPOSIT_DETAIL WHERE ANO IS NULL
SELECT * FROM DEPOSIT_DETAIL
--6. Delete all the remaining records using Delete command.
DELETE FROM DEPOSIT_DETAIL
SELECT * FROM DEPOSIT_DETAIL
--7. Delete all the records of Deposit_Detail table. (Use Truncate) 
TRUNCATE TABLE DEPOSIT_DETAIL
SELECT * FROM DEPOSIT_DETAIL
--8. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL
 
                                           --Part – B:
                                           

--Create following table using query according to the definition. 
--EMPLOYEE_MASTER 
--Column_Name DataType 
--EmpNo INT 
--EmpName VARCHAR(25) 
--JoiningDate DATETIME 
--Salary DECIMAL (8,2) 
--City VARCHAR(20) 
 
CREATE TABLE EMPLOYEE_MASTER(EMPNO INT,EMPNAME VARCHAR(25),JOININGDATE DATETIME, SALARY DECIMAL(8,2),CITY VARCHAR(20))


--Insert the following records in the EMPLOYEE_MASTER table.  
--EmpNo EmpName JoiningDate Salary City 
--101 Keyur 5-1-02 12000.00 Rajkot 
--102 Hardik 15-2-04 14000.00 Ahmedabad 
--103 Kajal 14-3-06 15000.00 Baroda 
--104 Bhoomi 23-6-05 12500.00 Ahmedabad 
--105 Harmit 15-2-04 14000.00 Rajkot 
--106 Mitesh 25-9-01 5000.00 Jamnagar 
--107 Meera Null 7000.00 Morbi 
--108 Kishan 6-2-03 10000.00 NULL 


INSERT INTO EMPLOYEE_MASTER VALUES(101,'KEYUR',05-01-02,12000.00,'RAJKOT'),
                                  (102,'HARDIK',15-2-04,14000.00,'AHMEDABAD'),
                                  (103,'KAJAL',14-03-06,15000.00,'BARODA'),
                                  (104,'BHOOMI',23-06-05,12500.00,'AHMEDABAD'),
                                  (105,'HARMIT',15-02-04,14000.00,'RAJKOT'),
                                  (106,'MITESH',25-09-01,5000.00,'JAMNAGAR'),
                                  (107,'MEERA',NULL,7000.00,'MORBI'),
                                  (108,'KISHAN',06-02-03,10000.00,NULL)

 
--From the above given tables perform the following queries (DELETE Operation): 
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER WHERE  SALARY>=14000
SELECT * FROM EMPLOYEE_MASTER
--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'
SELECT * FROM EMPLOYEE_MASTER
--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>1-1-2007
SELECT * FROM EMPLOYEE_MASTER
--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL
SELECT * FROM EMPLOYEE_MASTER
--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY=10000
SELECT * FROM EMPLOYEE_MASTER
--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL
SELECT * FROM EMPLOYEE_MASTER
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER 
SELECT * FROM EMPLOYEE_MASTER
--8. Remove Employee_MASTER table. (Use Drop) 
DROP TABLE EMPLOYEE_MASTER


                                        --Part – C: 
--1. Summarize Delete, Truncate and Drop
