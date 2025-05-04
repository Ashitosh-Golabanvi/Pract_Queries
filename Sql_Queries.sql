-- ***I'm Learning MYSQL Using MYSQL WORKBENCH:***--   

**TABLE CREATION:**
CREATE TABLE STUDENT(
STUDENT_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
GPA DECIMAL(3, 2),
ENROLLMENT_DATE DATE,
MAJOR VARCHAR(50)
);

CREATE TABLE PROGRAM (
    STUDENT_REF_ID INT,
    PROGRAM_NAME VARCHAR(50),
    PROGRAM_START_DATE DATE,
    CONSTRAINT fk_student
        FOREIGN KEY (STUDENT_REF_ID) REFERENCES STUDENT(STUDENT_ID)
);


 CREATE TABLE SCHOLARSHIP (
     STUDENT_REF_ID INT,
     SCHOLARSHIP_AMOUNT DECIMAL(10, 2),
     SCHOLARSHIP_DATE DATE,
     CONSTRAINT fk_scholarship_student
         FOREIGN KEY (STUDENT_REF_ID) REFERENCES STUDENT(STUDENT_ID)
 );


**INSERTION OF VALUES:**
STUDENT:
INSERT INTO STUDENT (STUDENT_ID, FIRST_NAME, LAST_NAME, GPA, ENROLLMENT_DATE, MAJOR) VALUES
(201, 'Shivansh', 'Mahajan', 8.79, '2021-09-01 09:30:00', 'Computer Science'),
(202, 'Umesh', 'Sharma', 8.44, '2021-09-01 08:30:00', 'Mathematics'),
(203, 'Rakesh', 'Kumar', 5.60, '2021-09-01 10:00:00', 'Biology'),
(204, 'Radha', 'Sharma', 9.20, '2021-09-01 12:45:00', 'Chemistry'),
(205, 'Kush', 'Kumar', 7.85, '2021-09-01 08:30:00', 'Physics'),
(206, 'Prem', 'Chopra', 9.56, '2021-09-01 09:24:00', 'History'),
(207, 'Pankaj', 'Vats', 9.78, '2021-09-01 14:30:00', 'English'),
(208, 'Navleen', 'Kaur', 7.00, '2021-09-01 06:30:00', 'Mathematics');

PROGRAM:
INSERT INTO PROGRAM (STUDENT_REF_ID, PROGRAM_NAME, PROGRAM_START_DATE) VALUES
(201, 'Computer Science', '2021-09-01 00:00:00'),
(202, 'Mathematics', '2021-09-01 00:00:00'),
(208, 'Mathematics', '2021-09-01 00:00:00'),  -- Ensure that this is allowed
(205, 'Physics', '2021-09-01 00:00:00'),
(204, 'Chemistry', '2021-09-01 00:00:00'),
(207, 'Psychology', '2021-09-01 00:00:00'),
(206, 'History', '2021-09-01 00:00:00'),
(203, 'Biology', '2021-09-01 00:00:00');



SCHOLARSHIP:
INSERT INTO SCHOLARSHIP (STUDENT_REF_ID, SCHOLARSHIP_AMOUNT, SCHOLARSHIP_DATE) VALUES
(201, 5000, '2021-10-15 00:00:00'),
(202, 4500, '2022-08-18 00:00:00'),
(203, 3000, '2022-01-25 00:00:00'); -- Ensure that STUDENT_REF_ID is unique


QUARIES:


Agreegate Functions Queries:

1. Find the number of employees in a table.
   select count(*) from emp; 

2. Find the total salary paid to all employees.
   select sum(salary) from emp;

3. Find the average salary of employees.
   select avg(salary) from emp;

4. Find the minimum and maximum salary in the company.
    select min(salary) as minimum, max(salary) as maximum from emp;



2. * Max:  Find the second highest salary.
         select max(salary) from emp where salary < (select max(salary) from emp);











  
1. Write a SQL query to fetch “FIRST_NAME” from the Student table in upper case and use ALIAS name as STUDENT_NAME.
  select upper(first_name) as student_name from student;

2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
    select distinct major from student;

3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
    SELECT SUBSTR(FIRST_NAME, 1, 3) FROM STUDENT;

4. Write a SQL query to find the position of alphabet (‘a’) int the first name column ‘Shivansh’ from Student table.
    select instr(First_name, 'a') from Student where First_Name= 'Shivansh';

5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.
    select distinct major, length(major) from student;

6. Write a SQL query to print FIRST_NAME from the Student table after replacing ‘a’ with ‘A’.
    select replace(first_name, 'a', 'A') from STUDENT;

7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.
    select concat(first_name,' ', last_name) as Complete_Name from student;

8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
    select * from student order by first_name, major desc;

9. Write a SQL query to print details of the Students with the FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
    select * from student where first_name in('Prem', 'Shivansh');

10. Write a SQL query to print details of the Students excluding FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
    select * from student where First_Name not in('Prem', 'Shivansh');

11. Write a SQL query to print details of the Students whose FIRST_NAME ends with ‘a’.
    select * from student where First_Name like '%a';

12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains six alphabets.
    select * from student where First_Name like '%_____a';

13. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.
    select * from student where GPA between 9.00 And 9.99;

14. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.
    SELECT COUNT(*) AS TOTAL FROM STUDENT WHERE MAJOR='COMPUTER SCIENCE';

15. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.
    SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM STUDENT WHERE GPA BETWEEN 8.5 AND 9.5;

16. Write an SQL query to fetch the no. of Students for each MAJOR subject in the descending order.
    SELECT MAJOR, COUNT(MAJOR) FROM STUDENT GROUP BY MAJOR ORDER BY COUNT(MAJOR) DESC;

17. Write an SQL query to show only even rows from Student table.
    SELECT * FROM STUDENT WHERE STUDENT_ID % 2 = 0;

18. Write an SQL query to show only odd rows from Student table.
    SELECT * FROM STUDENT WHERE STUDENT_ID % 2 != 0;

21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.
    SELECT * FROM STUDENT ORDER BY GPA DESC LIMIT 5;

22. Write an SQL query to determine the nth (say n=5) highest GPA from a table.
    SELECT * FROM STUDENT ORDER BY GPA DESC LIMIT 5, 1;

24. Write an SQL query to fetch the list of Students with the same GPA.
    SELECT S1.* FROM STUDENT S1, STUDENT S2 WHERE S1.GPA = S2.GPA AND S1.STUDENT_ID != S2.STUDENT_ID;

25. Write an SQL query to show the second highest GPA from a Student table using sub-query.
    SELECT MAX(GPA) FROM STUDENT WHERE GPA NOT IN(SELECT MAX(GPA) FROM STUDENT);

27. Write an SQL query to list STUDENT_ID who does not get Scholarship.
    SELECT STUDENT_ID FROM STUDENT WHERE STUDENT_ID NOT IN(SELECT STUDENT_REF_ID FROM SCHOLARSHIP);

29. Write an SQL query to fetch the MAJOR subject that have less than 4 people in it.
    SELECT MAJOR, COUNT(MAJOR) AS TOATAL_MAJOR FROM STUDENT GROUP BY MAJOR HAVING COUNT(MAJOR) < 4;

30. Write an SQL query to show all MAJOR subject along with the number of people in there.
    SELECT MAJOR, COUNT(MAJOR) AS TOTAL_MAJOR FROM STUDENT GROUP BY MAJOR;

31. Write an SQL query to show the last record from a table.
    SELECT * FROM STUDENT WHERE STUDENT_ID = (SELECT MAX(STUDENT_ID) FROM STUDENT);

32. Write an SQL query to fetch the first row of a table.
    SELECT * FROM STUDENT WHERE STUDENT_ID = (SELECT MIN(STUDENT_ID) FROM STUDENT);

33. Write an SQL query to fetch the last five records from a table.
    SELECT * FROM STUDENT ORDER BY STUDENT_ID DESC LIMIT 5;

37. Write an SQL query to fetch MAJOR subjects along with the max GPA in each of these MAJOR subjects.
    SELECT MAJOR, COUNT(GPA) AS TOTAL_GPA FROM STUDENT GROUP BY MAJOR;

39. Write an SQL query to show the current date.
    SELECT CURDATE();

40. Write an SQL query to show the current time.
    SELECT NOW();

41. Get the names of all employees whose salary is greater than 50,000.
    select name form emp where salary > 50.000;


***JOIN QUARIES:***


  Inner Join
1. Display the details of students who have received scholarships, including their names, scholarship amounts, and scholarship dates.
    SELECT STUDENT.FIRST_NAME,
    STUDENT.LAST_NAME,
    SCHOLARSHIP.SCHOLARSHIP_AMOUNT,
    SCHOLARSHIP.SCHOLARSHIP_DATE
    FROM STUDENT INNER JOIN SCHOLARSHIP ON
    STUDENT.STUDENT_ID = SCHOLARSHIP.STUDENT_REF_ID;

2. Display the details of students who have received scholerships, including thier names, scholarship amount, and scholarship dates And program name.
    SELECT S.FIRST_NAME, SC.SCHOLARSHIP_AMOUNT, SC.SCHOLARSHIP_DATE, P.PROGRAM_NAME
    FROM STUDENT S INNER JOIN SCHOLARSHIP SC ON S.STUDENT_ID = SC.STUDENT_REF_ID 
    INNER JOIN PROGRAM P ON S.STUDENT_ID = P.STUDENT_REF_ID;


  Left Join
1. List all students and their scholarship amounts if they have received any. If a student has not received a scholarship, display NULL for the scholarship details.
    SELECT STUDENT.FIRST_NAME,
    STUDENT.LAST_NAME,
    SCHOLARSHIP.SCHOLARSHIP_AMOUNT
    FROM STUDENT LEFT JOIN
    SCHOLARSHIP ON 
    STUDENT.STUDENT_ID = SCHOLARSHIP.STUDENT_REF_ID;

2. List all students, their scholarship amounts (if they have received any), and the programs they are enrolled in (if available). If a student has not received a scholarship or is not enrolled in a program, display NULL for those details
    SELECT S.FIRST_NAME, S.LAST_NAME,
    SC.SCHOLARSHIP_AMOUNT, P.PROGRAM_NAME 
    FROM STUDENT S 
    LEFT JOIN SCHOLARSHIP SC ON S.STUDENT_ID = SC.STUDENT_REF_ID 
    LEFT JOIN PROGRAM P ON S.STUDENT_ID = P.STUDENT_REF_ID;

  
  RIGHT JOIN
1. List all scholarships and the students who have received them. If a scholarship has not been awarded to any student, display NULL for the student details.
    SELECT S.FIRST_NAME, S.LAST_NAME,
    SC.SCHOLARSHIP_AMOUNT
    FROM STUDENT S RIGHT JOIN SCHOLARSHIP SC ON
    S.STUDENT_ID = SC.STUDENT_REF_ID;

2. List all scholarships, the students who have received them, and the programs they are enrolled in. If a scholarship has not been awarded to any student or if a student is not enrolled in a program, display NULL for those student details.
    SELECT S.FIRST_NAME, S.LAST_NAME,
    SC.SCHOLARSHIP_AMOUNT, P.PROGRAM_NAME
    FROM STUDENT S RIGHT JOIN SCHOLARSHIP SC ON S.STUDENT_ID = SC.STUDENT_REF_ID
    RIGHT JOIN PROGRAM P ON S.STUDENT_ID = P.STUDENT_REF_ID;




--"""""" iN "MYSQL" FULL OUTER JOIN DOESN'T SUPPORT FOR THAT WE NEED TO USE UNION AND LEFT JOIN AND RIGHT JOIN ":""""""--

-- IN REMAINING FOLLOWING QUERIES WORKS, FOR INTERVIEW PERPOSE U JUST REMEMBER THESE FOLLOWING QUERIES:-- 
  OUTER JOIN OR FULL JOIN
1. Display the details of all students and their scholarships, including their names, scholarship amounts, and scholarship dates. If a student has not received a scholarship, display NULL for the scholarship details. If there is a scholarship without a matching student, display NULL for the student details
    SELECT S.FIRST_, S, S.LAST_NAME,
    SC.SCHOLARSHIP_AMOUNT FROM
    STUDENT S INNER JOIN SCHOLARSHIP SC ON
    S.STUDENT_ID = SC.STUDENT_REF_ID;

2. WE CAN ACHIEVE THE TWO OUTER JOINS BY USING LEFT JOIN AND RIGHT JOIN AND UNIOIN FUNCTION.
   KNOW THIS MUCH IT'S ENOUGH UP FOR INTERVIEW PERPOSE.


