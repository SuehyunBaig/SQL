SELECT COALESCE(
    (SELECT num
     FROM mynumbers
     GROUP BY num
     HAVING COUNT(num) = 1
     ORDER BY num DESC
     LIMIT 1),
    NULL
) AS num;

-- The subquery here (SELECT num FROM mynumbers GROUP BY num HAVING COUNT(num) = 1 ORDER BY num DESC LIMIT 1) itself does not return NULL explicitly when there is nothing to select.
-- NULL is a value, not a placeholder
-- COALESCE returns the first non-null value
