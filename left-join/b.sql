SELECT 

orders.id as 'order_id',
customers.name as 'customer_name',
customers.mobile as 'customer_mobile', 
customers.email as 'customer_email', 
customers.address as 'customer_address',
orders.shipping_address,
orders.order_date, 
orders.delivery_date, 
orders.payment_method, 
orders.payment_status
 
FROM orders
LEFT JOIN customers ON customers.id = orders.customer_id;