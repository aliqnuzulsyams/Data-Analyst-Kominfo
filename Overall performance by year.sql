SELECT YEAR(order_date) as years,
		SUM(sales) as sales,
		COUNT(order_status)as number_of_order
	
	
FROM dqlab_sales_store
WHERE order_status='Order Finished'
GROUP BY years
order by years asc
;