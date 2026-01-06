SELECT DISTINCT p.email AS Email
FROM person p JOIN person q ON p.email = q.email
WHERE p.id != q.id
