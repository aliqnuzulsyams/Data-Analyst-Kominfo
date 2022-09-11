SELECT SUM(quantity) as total_penjualan,
		SUM(quantity*priceeach) as revenue
FROM orders_1;
SELECT SUM(quantity) as total_penjualan,
		SUM(quantity*priceeach) as revenue
FROM orders_2
WHERE status ='shipped'
;