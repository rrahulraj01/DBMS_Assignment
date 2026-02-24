PART A :
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
QUESTION 1 :

SELECT StudentID AS Roll_No,Name AS Student_Name,DateOfBirth AS DOB,Gender AS Gender_Type,ContactNumber AS Contact_No,DepartmentID AS Dept_ID
FROM Student;

QUESTION 2:

SELECT StudentID AS Roll_No,Name AS Student_Name,DepartmentID AS Dept_ID
FROM Student;


QUESTION 3:

SELECT FacultyID AS Faculty_ID,Name AS Faculty_Name,Designation AS Job_Title,Email AS Email_Address
FROM Faculty;

QUESTION 4:

SELECT CourseID AS Course_ID,CourseName AS Course_Title,Credits AS Credit_Value,DepartmentID AS Dept_ID,FacultyID AS Faculty_Incharge
FROM Course;

QUESTION 5:

SELECT StudentID AS Roll_No,CourseID AS Course_Code,Semester AS Semester_No,Grade AS Final_Grade
FROM Enrollment;


PART B :
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
QUESTION 6:

SELECT * FROM Student
WHERE DepartmentID = 'A01';

QUESTION 7:

 SELECT * FROM Student
 WHERE Gender = 'F';

QUESTION 8:

 SELECT * FROM Faculty
 WHERE Designation LIKE 'Assistant Professor%';

QUESTION 9:
 
 SELECT * FROM Faculty
 WHERE DepartmentID = 'A02';

QUESTION 10:

  SELECT * FROM Course
  WHERE Credits >= 4;

QUESTION 11:

 SELECT * FROM Student
 WHERE DateOfBirth > TO_DATE('2003-01-01','YYYY-MM-DD');

QUESTION 12:

 SELECT * FROM Enrollment
 WHERE Semester = 4;

PART C :
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

QUESTION 13:

 SELECT * FROM Student
 ORDER BY Name ASC;

QUESTION 14:

 SELECT * FROM Student
 ORDER BY DateOfBirth DESC;

QUESTION 15:

 SELECT * FROM Faculty
 ORDER BY Designation ASC;

QUESTION 16:

 SELECT * FROM Course
 ORDER BY Credits DESC;
 
QUESTION 17:

 SELECT * FROM Student
 WHERE ROWNUM <= 3;

QUESTION 18:

 SELECT * FROM Course
 WHERE ROWNUM <= 5;

PART D:
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
QUESTION 19:

SELECT 
    Name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
FROM Student;

QUESTION 20:

 SELECT 
    CourseName,
    Credits + 1 AS Updated_Credits
 FROM Course;

QUESTION 21:

 SELECT StudentID,CourseID,Semester,Grade AS Final_Grade
 FROM Enrollment;

QUESTION 22:

 SELECT 
    Name,EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
 FROM Student; 

QUESTION 23:

 SELECT 
    Name,SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain
 FROM Faculty;

