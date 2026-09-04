# Day 1: SQL Fundamentals Review and Joins Introduction

## Date

September 2, 2026

## Study Duration

4 hours

## Topics Covered

- SELECT
- WHERE
- ORDER BY
- LIMIT
- LIKE pattern matching
- INNER JOIN
- LEFT JOIN
- Basic JOIN mechanics
- Primary keys and foreign keys
- The difference between ON and WHERE

## Learning Objective

Understand how SQL retrieves, filters, sorts, and combines data from related tables.

## Practice Requirements

- Two INNER JOIN queries
- One LEFT JOIN query
- Screenshot review of problems, queries, and results
- Written explanations for query logic

## Practice Platforms

- HackerRank
- StrataScratch
- SQL Fiddle
- Mode SQL Tutorial

## INNER JOIN

An INNER JOIN returns only the rows where matching values exist in both tables.

General pattern:

```sql
SELECT
    table\_a.column\_name,
    table\_b.column\_name
FROM table\_a
INNER JOIN table\_b
    ON table\_a.common\_column = table\_b.common\_column;
```

## LEFT JOIN
A LEFT JOIN returns every row from the left table and matching rows from the right table. If no match exists, the right-table columns contain NULL.

General pattern:

```sql


SELECT
    table\_a.column\_name,
    table\_b.column\_name
FROM table\_a
LEFT JOIN table\_b
    ON table\_a.common\_column = table\_b.common\_column;
```
## Selected Practice Work
The detailed problem statements, screenshots, query results, alternative solutions, and personal explanations are stored in my Google Drive study archive.

Selected GitHub SQL files:

sql-basics.sql
filtering-and-pattern-matching.sql
inner-joins.sql
left-joins.sql

## Key Learning Points
SELECT chooses the columns to display.
WHERE filters rows.
ORDER BY sorts the output.
LIMIT restricts the number of returned rows.
INNER JOIN returns matching records from both tables.
LEFT JOIN preserves all records from the left table.
The ON clause defines how tables are connected.
The WHERE clause filters the result after the join.

## Daily Milestone
I can explain the difference between INNER JOIN and LEFT JOIN and describe how related tables are connected.

## Status
Completed
