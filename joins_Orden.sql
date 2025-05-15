-- a. Consultar las tablas por separado
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM products;
SELECT * FROM employes;

-- b. Crear los JOINS necesarios para obtener las órdenes completas por cliente 
-- Nota: c = customers, o = orders, od = orderdetails, p = products, e = employes

SELECT 
	o.orderNumber,
    c.customerName,
    c.contactFirstName,
    c.contactLastName,
    c.phone,
    c.addressLine1,
    c.city,
    c.country,
    p.productCode,
    p.productName,
    p.productDescription,
    od.quantityOrdered,
    od.priceEach, 
    o.orderDate
FROM customers AS c
JOIN orders AS o 
	ON c.customerNumber = o.customerNumber 
JOIN orderdetails AS od 
	ON o.orderNumber = od.orderNumber 
JOIN products AS p 
	ON od.productCode = p.productCode;

