  USE CSE_3A_151;                                          
                                            
                                            --Select into Operation 
                                               --Part – A:  
--Create table as per following. 
--CRICKET 
--Name City  Age 
--Sachin Tendulkar Mumbai 30 
--Rahul Dravid Bombay 35 
--M. S. Dhoni Jharkhand 31 
--Suresh Raina Gujarat 30 

CREATE TABLE CRICKET(NAME VARCHAR(50),CITY VARCHAR(20),AGE INT);
DROP TABLE CRICKET

SELECT * FROM CRICKET
INSERT INTO CRICKET VALUES ('SACHIN TENDULKAR','MUMBAI',30), ('SACHIN TENDULKAR','MUMBAI',30),('RAHUL DRAVID','BOMBAY',35),('M.S.DHONI','JHARKHAND',31),('SURESH RAINA','GUJARAT',30)
--1. Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET
SELECT * FROM WORLDCUP
--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=0
SELECT * FROM T20
--3. Create table IPL From Cricket with No Data.
SELECT * INTO IPL FROM CRICKET WHERE 3=2
SELECT * FROM IPL
--4. Select players who are either older than 30 and from 'Mumbai' or exactly 31 years old and not from 'Bombay', and insert them into a new table PLAYER. 
SELECT * INTO PLAYER FROM CRICKET WHERE (AGE>30 AND CITY='MUMBAI') OR (AGE =31 AND CITY!='BOMBAY')
SELECT * FROM PLAYER
--5. Select players whose age is a prime number or their city belongs to India Country, and insert them into a new table PLAYER_INFO. (Consider Cricketer age between 18 to 55)
SELECT * 
INTO PLAYER_INFO 
FROM CRICKET 
WHERE (AGE IN (19,23,29,31,37,41,43,47,53)) OR (CITY IN ('MUMBAI','BOMBAI','JHARKHAND'));
SELECT * FROM PLAYER_INFO
--6. Select players whose age is a multiple of 5 and insert them into a new table PLAYER_DATA.
SELECT *INTO PLAYER_DATA1 FROM CRICKET
WHERE AGE%5=0
SELECT * FROM PLAYER_DATA1
--7. Insert the cricketer into IPL table whose city is ‘Jharkhand’
INSERT INTO  IPL(NAME) SELECT CITY FROM CRICKET WHERE CITY='JHARKHAND'
SELECT * FROM IPL


                                                --Part – B:
                                                

--Create table as per following. 
--EMPLOYEE 
--Name City  Age 
--Jay Patel Rajkot 30 
--Rahul Dave Baroda 35 
--Jeet Patel Surat 31 
--Vijay Raval Rajkot 30 

CREATE TABLE EMPLOYEE(NAME VARCHAR(50),CITY VARCHAR(20),AGE INT);

INSERT INTO EMPLOYEE VALUES('JAY PATEL','RAJKOT',30), ('RAHUL DAVE','BARODA',35), ('JEET PATEL','SURAT',31) ,('VIJAY RAVAL','RAJKOT',30) 
--1. Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE
SELECT * FROM EMPLOYEE_DETAIL
--2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=0
SELECT * FROM EMPLOYEE_DATA
--3. Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 3=5
SELECT * FROM EMPLOYEE_INFO
                                            --Part – C:
                                            

--Perform following queries on Employee table. 
--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT  INTO EMPLOYEE_INFO(NAME,CITY,AGE) SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'
SELECT * FROM EMPLOYEE_INFO
--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO(NAME,CITY,AGE) SELECT * FROM EMPLOYEE WHERE AGE>32
SELECT * FROM EMPLOYEE_INFO
DELETE FROM EMPLOYEE_INFO