# 📘 DB Lab 7 – Subqueries (Nested Queries)
## 📌 Objective

To understand and apply subqueries (nested queries) in SQL for retrieving and analyzing data from a Student database using conditions and aggregate functions.

## 📖 What is a Subquery?

- A subquery is a query inside another SQL query. 

 - The inner query executes first

 - Its result is used by the outer query

## 🧪 Lab Questions

### 🔹 Part A: Basic Subqueries

  - Students in same department as 'S01'

  - Students with same gender as 'S02'

  - Students in same department as 'S03'


### 🔹 Part B: Subqueries with IN

  - Students from departments having female students

  - Students whose IDs appear in Enrollment

  - Students enrolled in any course


### 🔹 Part C: Aggregate Subqueries

  - Courses with credits > average
    
  - Students with ID > average StudentID
    
  - Departments with above-average student count
    

### 🔹 Part D: Subqueries Instead of JOIN

  - Students enrolled in courses
  - Students allocated to any department
  - Courses with at least one student

### 🔹 Part E: Analytical Queries

  - Course with maximum credits
    
  - Students enrolled in more than one course
    
  - Department with maximum students
    

### 🔹 Part F: Challenging Queries

  - Students in same course as 'S01'
      
  - Students not enrolled in any course
      
  - Courses with no students enrolled
      

## ⚙️ Key Concepts Used

- = → Single-row subquery
    
- IN → Multi-row subquery
    
- EXISTS → Check existence
    
- AVG(), COUNT(), MAX() → Aggregate functions

## 🗂️ Database Tables Used

   - Student
   
   - Course
   
   - Enrollment
   
   - Department
   

## 🚀 How to Run

- Create database and tables (Student, Course, Enrollment, Department)
    
- Insert sample data
    
- Execute queries in SQL environment (MySQL / Oracle / PostgreSQL)
    

# 📌 Notes

   - Avoid using JOIN unless necessary
   
   - Focus on solving using subqueries
   
   - Ensure proper use of operators (=, IN, EXISTS)
   
