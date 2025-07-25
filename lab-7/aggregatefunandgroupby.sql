                                       --Part � A: 


--Create table and inset records as per below.

--EMP 
--EID EName Department Salary JoiningDate City Gender 
--101 Rahul Admin 56000 1-Jan-90 Rajkot Male 
--102 Hardik IT 18000 25-Sep-90 Ahmedabad Male 
--103 Bhavin HR 25000 14-May-91 Baroda Male 
--104 Bhoomi Admin 39000 8-Feb-91 Rajkot Female 
--105 Rohit IT 17000 23-Jul-90 Jamnagar Male 
--106 Priya IT 9000 18-Oct-90 Ahmedabad Female 
--107 Bhoomi HR 34000 25-Dec-91 Rajkot Female 

CREATE TABLE EMP(EID INT,ENAME VARCHAR(20), DEPARTMENT VARCHAR(20),SALARY INT,JOININGDATE DATETIME,CITY VARCHAR(20),GENDER VARCHAR(20))

INSERT INTO EMP VALUES(101,'RAHUL','ADMIN',56000,'1990-01-01' ,'RAJKOT','MALE'),
                      (102,'HARDIK','IT',18000 ,'1990-09-25','AHMEDABAD','MALE'),
                      (103,'BHAVIN','HR',25000,'1991-05-14','BARODA','MALE '),
                      (104 ,'BHOOMI','ADMIN',39000,'1991-02-08','RAJKOT','FEMALE'),
                      (105,'ROHIT','IT',17000,'1990-07-23','JAMNAGAR','MALE'),
                        (106,'PRIYA','IT',9000 ,'1990-10-18','AHMEDABAD','FEMALE' ),
                      (107,'BHOOMI','HR',34000,'1991-12-25' ,'RAJKOT','FEMALE' )
                      
SELECT * FROM EMP
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAX_SAL FROM EMP
SELECT MIN(SALARY) AS MIN_SAL FROM EMP
--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT SUM(SALARY) AS TOTAL_SAL FROM EMP
SELECT AVG(SALARY) AS AVERAGE_SAL FROM EMP
--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS COUNT_EMPLOYEE FROM EMP
--4. Find highest salary from Rajkot city. 
SELECT MAX(SALARY) AS MAX_SAL FROM EMP WHERE CITY='RAJKOT'
--5. Give maximum salary from IT department. 
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP WHERE DEPARTMENT='IT'
--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(ENAME) AS COUNT_EMPLOYEE FROM EMP WHERE JOININGDATE>'1991-02-08'
--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SAL FROM EMP WHERE DEPARTMENT='ADMIN'
--8. Display total salary of HR department. 
SELECT SUM(SALARY) AS TOTAL_SAL FROM EMP WHERE DEPARTMENT='HR'
--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS COUNT_CITY FROM EMP 
--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS COUNT_DEPARTMENT FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SAL FROM EMP WHERE CITY='Ahmedabad'
--12. Find city wise highest salary.
SELECT CITY,MAX(SALARY) AS MAX_SAL FROM EMP GROUP BY CITY
--13. Find department wise lowest salary.
SELECT DEPARTMENT,MIN(SALARY) AS MIN_SAL FROM EMP GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(ENAME) AS COUNT_EMPLOYEE FROM EMP GROUP BY CITY
--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT,SUM(SALARY) AS DEP_SAL_SUM FROM EMP GROUP BY DEPARTMENT
--16. Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) AS AVG_SAL_DEP FROM EMP GROUP BY DEPARTMENT
--17. Count the number of employees for each department in every city.
SELECT CITY,DEPARTMENT, COUNT(EID) AS COUNT_EMPLOYEE FROM EMP GROUP BY CITY,DEPARTMENT
--18. Calculate the total salary distributed to male and female employees.
SELECT GENDER,SUM(SALARY) AS SUM_SAL FROM EMP GROUP BY GENDER
--19. Give city wise maximum and minimum salary of female employees.
SELECT CITY,MAX(SALARY) AS MAX_SAL,MIN(SALARY) AS MIN_SAL FROM EMP WHERE GENDER='FEMALE' GROUP BY CITY
--20. Calculate department, city, and gender wise average salary.
SELECT DEPARTMENT,CITY,GENDER,AVG(SALARY) AS AVG_SAL FROM EMP GROUP BY DEPARTMENT,CITY,GENDER


                                       --Part � B: 


--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) AS COUNT_EMPLOYEE FROM EMP WHERE CITY='RAJKOT'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFRENECE_SAL FROM EMP
--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS COUNT_EMPLOYEE FROM EMP WHERE JOININGDATE<'1991-01-01'


                                        --Part � C: 


--1. Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS COUNT_EMPLOYEE FROM EMP WHERE CITY IN('RAJKOT','BARODA')
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT DEPARTMENT,COUNT(EID) AS COUNT_EMPLOYEE FROM EMP WHERE JOININGDATE<'1991-01-01' AND DEPARTMENT='IT' GROUP BY DEPARTMENT
--3. Find the Joining Date wise Total Salaries.
SELECT JOININGDATE,SUM(SALARY) TOTAL_SAL FROM EMP GROUP BY JOININGDATE
--4. Find the Maximum salary department & city wise in which city name starts with �R�.
SELECT DEPARTMENT,CITY, MAX(SALARY) AS MAX_SAL FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY