PART - A
_________

1.
---
SELECT COUNT(*) AS Total_Students
FROM Student;

2.
---
SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

3.
---
SELECT COUNT(*) AS Total_Courses
FROM Course;

4.
---
SELECT MAX(Credits) AS Max_Credits
FROM Course;

5.
---
SELECT MIN(Credits) AS Min_Credits
FROM Course;


PART - B
_________

6.
---
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DepartmentID;

7.
---
SELECT DepartmentID, COUNT(*) AS Total_Faculty
FROM Faculty
GROUP BY DepartmentID;

8.
---
SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID;

9.
---
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

10.
---
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;


PART - C
_________

11.
---
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > 3;

12.
---
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

13.
---
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

14.
---
SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID
HAVING COUNT(*) > 1;


PART - D
_________
15.
---
SELECT CourseID, COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY CourseID;

16.
---
SELECT Course.CourseName, COUNT(Enrollment.StudentID) AS Total_Students
FROM Course
INNER JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
GROUP BY Course.CourseName;

17.
---
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DepartmentID;

18.
---
SELECT f.FacultyID, COUNT(c.CourseID) AS Total_Courses
FROM Faculty f
JOIN Course c
ON f.FacultyID = c.FacultyID
GROUP BY f.FacultyID;


PART - E
_________

19.
---
SELECT Course.CourseName, MAX(Enrollment.Grade) AS Max_Grade
FROM Course
INNER JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
GROUP BY Course.CourseName;

20.
---
SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID;

21.
---
SELECT Semester, COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

22.
---
SELECT CourseID, COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY CourseID
HAVING COUNT(StudentID) > 2;