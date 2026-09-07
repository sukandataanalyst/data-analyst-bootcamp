# Day 3 – SQL Subqueries

## Overview

Day 3 focused on SQL subqueries using the W3Schools Northwind database.

A subquery is a query written inside another SQL query. It can be used
to calculate a value, filter records, compare rows, or create a temporary
result set.

All queries were written using MySQL syntax.

## Learning Objectives

- Understand scalar subqueries
- Use `IN` and `NOT IN` subqueries
- Write correlated subqueries
- Use subqueries in the `FROM` clause
- Understand derived tables
- Combine subqueries with aggregate functions
- Use `GROUP BY` and `HAVING`
- Debug table relationships and query results
- Apply SQL concepts to interview-style problems

## W3Schools Northwind Practice

### 1. Scalar Subquery

Found products whose price was greater than the average product price.

- Result: 25 records
- Main concepts: `AVG()`, `WHERE`, scalar subquery, comparison operator

### 2. `IN` Subquery

Found products belonging to the Beverages category.

- Result: 12 records
- Main concepts: `IN`, subquery, category filtering

### 3. `NOT IN` Subquery

Found products that did not belong to the Beverages category.

- Result: 65 records
- Main concepts: `NOT IN`, subquery, exclusion filtering

### 4. Correlated Subquery

Found products whose price was higher than the average price of products
in their own category.

- Result: 27 records
- Main concepts: correlated subquery, table aliases, `AVG()`,
  outer and inner query column comparison

### 5. `FROM`-Clause Subquery

Calculated the average price for each category and returned categories
whose average price was greater than 30.

- Result: 3 records
- Main concepts: derived table, `FROM` subquery, `GROUP BY`, `AVG()`,
  `WHERE`, and `ORDER BY`

## StrataScratch Practice

### 1. Workers With the Highest Salaries

- Problem ID: 10353
- Result: 2 records
- Main concepts: `JOIN`, `MAX()`, nested subquery, `DISTINCT`

Important debugging lesson:

The worker with the absolute highest salary did not have a matching title
record. Therefore, the maximum salary had to be calculated only among
workers who had matching records in the `title` table.

### 2. Departments With 5 Employees

- Problem ID: 9911
- Result: 1 record
- Main concepts: `GROUP BY`, `COUNT()`, and `HAVING`

Important lesson:

Aggregate functions such as `COUNT()` cannot be used directly in `WHERE`.
The `HAVING` clause is used to filter grouped results.

### 3. Total Cost Of Orders

- Problem ID: 10183
- Result: 7 records
- Main concepts: `JOIN`, `SUM()`, `GROUP BY`, and alphabetical sorting

The query calculated the total order cost for each customer and sorted
the results by the customer's first name.

## HackerRank Practice

### 1. Revising Aggregations – The Count Function

- Result: 6 cities
- Main concepts: `COUNT()`, `WHERE`, and aggregate filtering

### 2. Higher Than 75 Marks

- Result: Completed successfully
- Main concepts: `WHERE`, `RIGHT()`, `ORDER BY`, and secondary sorting

The results were sorted by the last three characters of each student's
name and then by ascending student ID when necessary.

## Key SQL Concepts

```sql
-- Scalar subquery
SELECT ProductName, Price
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);

-- IN subquery
SELECT
    ProductName,
    CategoryID
FROM Products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);

-- NOT IN subquery
SELECT
    ProductName,
    CategoryID
FROM Products
WHERE CategoryID NOT IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);

-- Correlated subquery
SELECT
    p.ProductName,
    p.CategoryID,
    p.Price
FROM Products AS p
WHERE p.Price > (
    SELECT AVG(p2.Price)
    FROM Products AS p2
    WHERE p2.CategoryID = p.CategoryID
);

-- FROM-clause subquery
SELECT
    CategoryID,
    AveragePrice
FROM (
    SELECT
        CategoryID,
        AVG(Price) AS AveragePrice
    FROM Products
    GROUP BY CategoryID
) AS category\_prices
WHERE AveragePrice > 30;

-- GROUP BY and HAVING
SELECT
    department
FROM employee
GROUP BY department
HAVING COUNT(id) >= 5;
```
## Debugging Lessons
- Extra spaces inside a string can change query results.
- An invalid UTF-8 character can cause an otherwise correct query to fail.
- A query can run successfully but return no rows because of a table relationship problem.
- A declared primary key is not required to write a JOIN; matching columns can still connect related records.
- WHERE filters individual rows before grouping.
- HAVING filters grouped results after aggregation.
- Unique IDs should not be used as the grouping column when the goal is to count records by a repeated category.

## Status
Day 3 completed successfully.

## Tools Used
  MySQL
  W3Schools Northwind database
  StrataScratch
  HackerRank
  Google Drive
  GitHub

## Date Completed
September 4, 2026




