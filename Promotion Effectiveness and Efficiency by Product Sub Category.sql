SELECT YEAR(order_date) as years,
		product_sub_category,
		product_category,
		SUM(sales) as sales,
		SUM(discount_value) as promotion_value,
		ROUND((sum(discount_value)/sum(sales)*100),2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE year(order_date)='2012' and order_status='Order Finished'
GROUP BY YEAR(order_date), product_sub_category, product_category
ORDER BY sales desc
;