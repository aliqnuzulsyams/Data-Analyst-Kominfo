SELECT left(productCode,3) as categoryID, COUNT(DISTINCT orderNumber) as total_order,SUM(quantity) as total_penjualan FROM
(SELECT productCode,orderNumber,quantity,status,left(productCode,3) as categoryid FROM orders_2 WHERE status='Shipped') as tabel_c
GROUP BY left(productCode,3)
ORDER BY COUNT(DISTINCT orderNumber)DESC
;
