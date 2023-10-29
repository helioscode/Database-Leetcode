# Write your MySQL query statement below
SELECT
  (CASE
    WHEN id % 2 != 0 AND id != (SELECT COUNT(*) FROM seat) THEN id + 1
    WHEN id % 2 != 0 AND id = (SELECT COUNT(*) FROM seat) THEN id
    ELSE id - 1
  END) AS id,
  student
FROM
  seat
ORDER BY
  id ASC;

