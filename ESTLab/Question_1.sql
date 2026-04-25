SELECT p.prod_name,COALESCE(SUM(o.qty), 0) AS total_quantity
FROM Products p
LEFT JOIN Orders o
ON p.prod_id=o.prod_id
GROUP BY p.prod_id,p.prod_name;
