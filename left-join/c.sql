SELECT 

orders.id,
category.name as 'category_name',
products.name as 'product_name', 
invoice.product_price, 
invoice.quantity, 
invoice.product_price * invoice.quantity AS 'sub_total'
 
FROM invoice
LEFT JOIN orders ON orders.id = invoice.order_id
LEFT JOIN products ON products.id = invoice.product_id
LEFT JOIN category ON category.id = products.category_id;