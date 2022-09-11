SELECT quarter(createdate) as quarter,
COUNT(DISTINCT customerID) as total_customers FROM
(SELECT customerID,createdate,quarter(createdate) as quarter
 FROM customer
WHERE createdate between '2004-1-1' and '2004-6-30') as tabel_b
GROUP BY quarter(createDate)
;