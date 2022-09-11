SELECT quarter(createdate) as quarter, COUNT(DISTINCT customerID ) as total_customers FROM
(SELECT customerID,createdate,quarter(createdate) as quarter FROM customer WHERE createdate between '2004-01-01' and '2004-06-30' and customerID IN
(SELECT DISTINCT customerID FROM orders_1
  UNION
  SELECT DISTINCT customerID FROM orders_2)
) AS tabel_b
 GROUP BY quarter(createdate)
 ;