PART : A
------------------

QUESTION - 1 :
-------------

SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 'S01'
);

Question - 2 :
-------------

SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE StudentID = 'S02'
);

Question - 3 :
-------------

SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 'S03'
);

PART : B
------------------

Question - 4 :
-------------

SELECT Name
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    WHERE Gender = 'Female'
);

Question - 5 :
-------------

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

Question - 6 :
-------------

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

PART : C
------------------

Question - 7 :
-------------

SELECT CourseName
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);

Question - 8 :
-------------

SELECT Name
FROM Student
WHERE TO_NUMBER(SUBSTR(StudentID,2)) > (
    SELECT AVG(TO_NUMBER(SUBSTR(StudentID,2)))
    FROM Student
);

Question - 9 :
-------------

SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > (
    SELECT AVG(StudentCount)
    FROM (
        SELECT COUNT(*) StudentCount
        FROM Student
        GROUP BY DepartmentID
    ) AvgTable
);
PART : D
------------------

Question - 10 :
--------------

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

Question - 11 :
--------------

SELECT Name
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Department
);

Question - 12 :
--------------

SELECT CourseName
FROM Course
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollment
);

PART : E
------------------


Question - 13 :
--------------

SELECT CourseName
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

Question - 14 :
--------------

SELECT StudentID
FROM Enrollment
GROUP BY StudentID
HAVING COUNT(CourseID) > 1;

Question - 15 :
--------------

SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(StudentID) = (
    SELECT MAX(StudentCount)
    FROM (
        SELECT COUNT(StudentID) AS StudentCount
        FROM Student
        GROUP BY DepartmentID
    ) MaxDept
);

PART : F
------------------


Question - 16 :
--------------

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    WHERE CourseID IN (
        SELECT CourseID
        FROM Enrollment
        WHERE StudentID = 'S01'
    )
);

Question - 17 :
--------------

SELECT Name
FROM Student
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Enrollment
);

Question - 18 :
--------------

SELECT CourseName
FROM Course
WHERE CourseID NOT IN (
    SELECT CourseID
    FROM Enrollment
);