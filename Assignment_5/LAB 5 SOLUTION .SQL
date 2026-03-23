                                                                                                            PART - A
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
QUESTION 1:
----------
    
SELECT S.StudentID, S.Name, E.CourseID
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;

QUESTION 2 :
----------

SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;

QUESTION 3 :
----------

SELECT S.Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;


                                                                                                               PART - B
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
QUESTION 4 :
----------

SELECT C.CourseName, C.Credits, F.Name
FROM Course C
INNER JOIN Faculty F
ON C.FacultyID = F.FacultyID;

QUESTION 5 :
----------

SELECT C.CourseName
FROM Course C
INNER JOIN Faculty F
ON C.FacultyID = F.FacultyID
WHERE F.FacultyID = 'F201';

QUESTION 6 :
----------

SELECT F.Name, F.Designation, C.CourseName
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID;



                                                                                                            PART - C
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

QUESTION 7 :
----------

SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;

QUESTION 8 :
----------

SELECT S.Name, C.CourseName, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;

QUESTION 9 :
----------

SELECT S.Name, C.CourseName, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE E.Semester = 4;

QUESTION 10 :
------------

SELECT C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE S.StudentID = 'S401';




                                                                                                            PART - D
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

QUESTION 11 :
-----------

SELECT S.Name, S.DepartmentID, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;


QUESTION 12 :
-----------

SELECT D.DepartmentID, C.CourseName
FROM Department D
INNER JOIN Course C
ON D.DepartmentID = C.DepartmentID;


QUESTION 13 :
-----------

SELECT F.Name, D.DepartmentName
FROM Faculty F
INNER JOIN Department D
ON F.DepartmentID = D.DepartmentID;



                                                                                                            PART - E
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

QUESTION 14 :
-----------

SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE S.DepartmentID = 'D101';


QUESTION 15 :
-----------

SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
ORDER BY S.Name ASC;


QUESTION 16 :
-----------

SELECT F.Name, C.CourseName
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
ORDER BY C.Credits DESC;



                                                                                                            PART - F
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

QUESTION 17 :
-----------

SELECT C.CourseName, COUNT(E.StudentID) AS TotalStudents
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;


QUESTION 18 :
-----------

SELECT F.Name, COUNT(C.CourseID) AS TotalCourses
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
GROUP BY F.Name;


QUESTION 19 :
-----------

SELECT D.DepartmentName, COUNT(S.StudentID) AS TotalStudents
FROM Department D
INNER JOIN Student S
ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentName;


QUESTION 20 :
-----------

SELECT C.CourseName, MAX(E.Grade) AS MaxGrade
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;