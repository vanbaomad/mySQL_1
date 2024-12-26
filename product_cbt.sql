use product;
-- cau 1
SELECT p.product_id, p.product_name, od.quantity, p.price
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
WHERE od.order_id = 1; 
-- cau 2
SELECT od.order_id, SUM(od.quantity * p.price) AS total_amount
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
WHERE od.order_id = 1
GROUP BY od.order_id;

-- cau 3
SELECT p.product_id, p.product_name, p.price
FROM Products p
LEFT JOIN OrderDetails od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;
-- cau 4
SELECT c.category_name, COUNT(p.product_id) AS total_products
FROM Categories c
LEFT JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;
-- cau 5
SELECT cu.customer_name, SUM(od.quantity) AS total_ordered
FROM Customers cu
JOIN Orders o ON cu.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY cu.customer_id, cu.customer_name;
-- cau 6
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
ORDER BY product_count DESC
LIMIT 1;
-- cau 7
SELECT c.category_name, SUM(od.quantity) AS total_ordered
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY c.category_id, c.category_name;
-- cau 8
SELECT cu.customer_id, cu.customer_name, SUM(od.quantity) AS total_ordered
FROM Customers cu
JOIN Orders o ON cu.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY cu.customer_id, cu.customer_name
ORDER BY total_ordered DESC
LIMIT 3;
-- cau 9
SELECT cu.customer_id, cu.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers cu
JOIN Orders o ON cu.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2024-01-01' AND '2024-01-31' -- Thay khoảng thời gian cụ thể
GROUP BY cu.customer_id, cu.customer_name
HAVING total_orders > 1;
-- cau 10
SELECT p.product_id, p.product_name, SUM(od.quantity) AS total_ordered
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_ordered DESC;







