SELECT year(order_date) as years, 
		product_sub_category,
		SUM(sales) as sales

FROM dqlab_sales_store

WHERE year(order_date) IN (2011,2012) AND
					order_status = "Order Finished"

GROUP BY year(order_date), product_sub_category
ORDER BY years asc, sales desc
;