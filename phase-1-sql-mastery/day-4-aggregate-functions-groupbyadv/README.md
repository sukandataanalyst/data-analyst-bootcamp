# Day 4 – Aggregate Functions and GROUP BY Advanced

## Overview

Day 4 focused on aggregate functions, `GROUP BY`, `HAVING`, and
grouped results using the W3Schools Northwind database.

Aggregate functions calculate summary values from table data.

The `GROUP BY` clause creates groups based on matching column values,
while the `HAVING` clause filters grouped results after aggregation.

All queries were written using MySQL syntax.

## Learning Objectives

- Use `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`
- Group rows using a single column
- Group rows using multiple columns
- Filter grouped results with `HAVING`
- Combine `GROUP BY` with `JOIN`
- Use aggregate functions with joined tables
- Use `COUNT(DISTINCT)` to count unique values
- Sort grouped results using multiple columns
- Understand ascending and descending sort priority
- Select only grouped or aggregated columns
- Debug aggregate queries and table relationships
- Apply aggregation concepts to interview-style problems

## W3Schools Northwind Practice

### 1. `COUNT()` Practice

Counted the total number of products in the `Products` table.

- Result: 1 record
- Expected output: `ProductCount = 77`
- Main concepts: `COUNT()`, aggregate function, column alias

### 2. `SUM()` Practice

Calculated the total price of all products.

- Result: 1 record
- Expected output: `TotalPrice = 2222.71`
- Main concepts: `SUM()`, aggregate function, column alias

### 3. `AVG()` Practice

Calculated the average price of all products.

- Result: 1 record
- Expected output: `AveragePrice = 28.866364`
- Main concepts: `AVG()`, aggregate function, column alias

### 4. `MIN()` Practice

Found the lowest product price.

- Result: 1 record
- Expected output: `LowestPrice = 2.50`
- Main concepts: `MIN()`, aggregate function, column alias

### 5. `MAX()` Practice

Found the highest product price.

- Result: 1 record
- Expected output: `HighestPrice = 263.50`
- Main concepts: `MAX()`, aggregate function, column alias

### 6. Single-Column `GROUP BY`

Counted the number of products in each category.

- Result: 8 records
- Main concepts: `GROUP BY`, `COUNT()`, aggregate grouping

### 7. Multiple-Column `GROUP BY`

Counted products for each unique `CategoryID` and `SupplierID`
combination.

- Result: 49 records
- Main concepts: multiple-column `GROUP BY`, `COUNT()`,
  multi-column `ORDER BY`

### 8. `HAVING` with `GROUP BY`

Found categories containing more than 5 products.

- Result: 7 records
- Main concepts: `GROUP BY`, `HAVING`, `COUNT()`,
  aggregate filtering

### 9. Multiple-Column `GROUP BY` with `HAVING`

Found `CategoryID` and `SupplierID` combinations containing more
than one product.

- Result: 19 records
- Main concepts: multiple-column `GROUP BY`, `HAVING`, `COUNT()`

### 10. `GROUP BY` with Categories `JOIN`

Counted products in each category and displayed the category name.

- Result: 8 records
- Main concepts: `INNER JOIN`, `ON`, `GROUP BY`, `COUNT()`

### 11. `GROUP BY` with Suppliers `JOIN`

Counted the products provided by each supplier.

- Result: 29 records
- Main concepts: `INNER JOIN`, `GROUP BY`, `COUNT()`,
  table aliases

### 12. `JOIN` + `GROUP BY` + `HAVING`

Found suppliers that provide more than 3 products.

- Result: 4 records
- Main concepts: `JOIN`, `GROUP BY`, `HAVING`, `COUNT()`,
  aggregate filtering

### 13. At Least 4 Products

Found suppliers that provide at least 4 products.

- Result: 4 records
- Main concepts: `>=`, `JOIN`, `GROUP BY`, `HAVING`, `COUNT()`

Important lesson:

“At least 4” means greater than or equal to 4:

```sql
COUNT(p.ProductID) >= 4
```

### 14. Average Price by Category

Found categories whose average product price was greater than 25.

- Result: 5 records
- Main concepts: `AVG()`, `JOIN`, `GROUP BY`, `HAVING`,
  descending sorting

### 15. Total Price by Category

Found categories whose total product price was greater than 200.

- Result: 6 records
- Main concepts: `SUM()`, `JOIN`, `GROUP BY`, `HAVING`,
  descending sorting

### 16. `COUNT(DISTINCT)` with `JOIN`

Found suppliers providing products in at least 2 different categories.

- Result: 10 records
- Main concepts: `COUNT(DISTINCT)`, `JOIN`, `GROUP BY`,
  `HAVING`, multiple-column `ORDER BY`

Important lesson:

`COUNT(DISTINCT p.CategoryID)` counts unique categories rather
than counting every product row.

## Key SQL Concepts

```sql
-- Aggregate function
SELECT
    COUNT(*) AS ProductCount
FROM Products;

-- Single-column GROUP BY
SELECT
    CategoryID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID;

-- Multiple-column GROUP BY
SELECT
    CategoryID,
    SupplierID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID, SupplierID;

-- GROUP BY with HAVING
SELECT
    CategoryID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;

-- GROUP BY with JOIN
SELECT
    c.CategoryID,
    c.CategoryName,
    COUNT(*) AS ProductCount
FROM Products AS p
JOIN Categories AS c
    ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryID,
    c.CategoryName;

-- COUNT(DISTINCT) with JOIN
SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(DISTINCT p.CategoryID) AS CategoryCount
FROM Products AS p
JOIN Suppliers AS s
    ON p.SupplierID = s.SupplierID
GROUP BY
    s.SupplierID,
    s.SupplierName
HAVING COUNT(DISTINCT p.CategoryID) >= 2;
```

## Important Sorting Lesson

When multiple columns are used in `ORDER BY`, the first column has
priority.

```sql
ORDER BY ProductCount DESC, SupplierID ASC;
```

This means:

- Sort `ProductCount` from highest to lowest.
- For tied product counts, sort `SupplierID` from lowest to highest.

If no direction is specified, `ASC` is used by default.

## Debugging Lessons

- `WHERE` filters individual rows before grouping.
- `HAVING` filters grouped results after aggregation.
- “At least 4” means `>= 4`, while “more than 4” means `> 4`.
- A selected column must be included in `GROUP BY` unless it is
  inside an aggregate function.
- `COUNT(DISTINCT column)` counts unique values.
- The correct category join condition is:
  `p.CategoryID = c.CategoryID`
- The correct supplier join condition is:
  `p.SupplierID = s.SupplierID`
- The first column in a multi-column `ORDER BY` has the highest
  sorting priority.
- Additional `ORDER BY` columns sort only tied rows.
- Table aliases make joined aggregate queries shorter and clearer.
- Aggregate conditions belong in `HAVING`, not `WHERE`.

## StrataScratch and HackerRank Practice

Separate Day 4 StrataScratch and HackerRank problems have not yet
been documented in this README.

The verified Day 4 practice completed so far used the W3Schools
Northwind database and interview-style aggregation exercises.

## Status

W3Schools Northwind aggregate function and advanced `GROUP BY`
practice completed successfully.

StrataScratch and HackerRank Day 4 practice:
Pending separate documentation.

## Tools Used

- MySQL
- W3Schools Northwind database
- StrataScratch
- HackerRank
- Google Drive
- GitHub

## Date Started

September 5, 2026
