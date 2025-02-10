```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL); -- Added OR salary IS NULL to include NULL salaries
--Alternative solution using IS NOT NULL condition
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000
UNION ALL
SELECT * FROM employees WHERE department = 'Sales' AND salary IS NULL; 
```
The solution uses either the `IS NULL` operator in conjunction with `OR` to explicitly include rows where salary is NULL or uses `UNION ALL` to combine results.