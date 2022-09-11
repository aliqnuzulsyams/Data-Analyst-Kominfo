SELECT YEAR(order_date) as years,
		SUM(sales) as sales,
		SUM(discount_value) as promotion_value,
		ROUND(sum(discount_value)/sum(sales)*100,2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status='Order Finished'
GROUP BY YEAR(order_date)
ORDER BY years asc
;