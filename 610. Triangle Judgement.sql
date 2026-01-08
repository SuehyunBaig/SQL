SELECT x, y, z, 
    CASE
        WHEN x < y+z AND y <x+z AND z < x+y THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM triangle;

-- CASE statement adds a derived column to output not to the database
-- Conditions are matched from top to bottom (first matching WHEN wins)
-- ELSE is optional (returns NULL if omitted)
