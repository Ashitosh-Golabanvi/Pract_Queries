  -- ***I'm Learning Oracle SQL Using SQL Plus:***--   

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
    PROGRAM_NAME VARCHAR2(50),
    PROGRAM_START_DATE DATE,
    CONSTRAINT fk_student
        FOREIGN KEY (STUDENT_REF_ID) REFERENCES STUDENT(STUDENT_ID)
);

 CREATE TABLE SCHOLARSHIP (
     STUDENT_REF_ID INT,
     SCHOLARSHIP_AMOUNT NUMBER(10, 2),
     SCHOLARSHIP_DATE DATE,
     CONSTRAINT fk_scholarship_student
         FOREIGN KEY (STUDENT_REF_ID) REFERENCES STUDENT(STUDENT_ID)
 );


**INSERTION OF VALUES:**
STUDENT:
INSERT INTO STUDENT VALUES(201, 'Shivansh', 'Mahajan', 8.79, TO_DATE('2021-09-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Computer Science');
INSERT INTO STUDENT VALUES(202, 'Umesh', 'Sharma', 8.44, TO_DATE('2021-09-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Mathematics');
INSERT INTO STUDENT VALUES(203, 'Rakesh', 'Kumar', 5.60, TO_DATE('2021-09-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Biology');
INSERT INTO STUDENT VALUES(204, 'Radha', 'Sharma', 9.20, TO_DATE('2021-09-01 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Chemistry');
INSERT INTO STUDENT VALUES(205, 'Kush', 'Kumar', 7.85, TO_DATE('2021-09-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Physics');
INSERT INTO STUDENT VALUES(206, 'Prem', 'Chopra', 9.56, TO_DATE('2021-09-01 09:24:00', 'YYYY-MM-DD HH24:MI:SS'), 'History');
INSERT INTO STUDENT VALUES(207, 'Pankaj', 'Vats', 9.78, TO_DATE('2021-09-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'English');
INSERT INTO STUDENT VALUES(208, 'Navleen', 'Kaur', 7.00, TO_DATE('2021-09-01 06:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Mathematics');

PROGRAM:
INSERT INTO PROGRAM VALUES (201, 'Computer Science', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (202, 'Mathematics', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (208, 'Mathematics', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (205, 'Physics', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (204, 'Chemistry', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (207, 'Psychology', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (206, 'History', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO PROGRAM VALUES (203, 'Biology', TO_DATE('2021-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));


SCHOLARSHIP:
INSERT INTO SCHOLARSHIP VALUES (201, 5000, TO_DATE('2021-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO SCHOLARSHIP VALUES (202, 4500, TO_DATE('2022-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO SCHOLARSHIP VALUES (203, 3000, TO_DATE('2022-01-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO SCHOLARSHIP VALUES (201, 4000, TO_DATE('2021-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));


QUARIES:
  
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
    select first_name || ' ' || last_name as complete_name from student;

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
    SELECT FIRST_NAME || LAST_NAME FROM STUDENT WHERE GPA BETWEEN 8.5 AND 9.5;


