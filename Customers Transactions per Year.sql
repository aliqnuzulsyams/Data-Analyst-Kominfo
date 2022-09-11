SELECT YEAR(order_date) years,
		count(distinct customer) number_of_customer
FROM dqlab_sales_store
WHERE order_status ='Order Finished'
GROUP BY YEAR(order_date)
;