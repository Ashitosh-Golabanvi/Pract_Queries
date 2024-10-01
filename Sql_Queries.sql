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
