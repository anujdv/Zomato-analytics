SELECT
    city,
    price_segment,
    ROUND(AVG(aggregate_rating),2) AS avg_rating,
    COUNT(restaurant_id) AS restaurant_count
FROM zomato_analytics
GROUP BY city, price_segment
HAVING COUNT(restaurant_id) > 30
ORDER BY city, price_segment;
