# Write your MySQL query statement below
WITH Department AS (
  SELECT
    d.name AS Department,
    e1.name AS Employee,
    e1.salary AS Salary
  FROM Employee e1
  JOIN Department d ON e1.departmentId = d.id
  WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM Employee e2
    WHERE e2.departmentId = e1.departmentId AND e2.salary >= e1.salary
  ) <= 3
)

SELECT Department, Employee, Salary
FROM Department
ORDER BY Department, Salary DESC;
