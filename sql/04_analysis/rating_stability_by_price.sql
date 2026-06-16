SELECT
    price_segment,
    ROUND(AVG(aggregate_rating),2) AS avg_rating,
    ROUND(STDDEV(aggregate_rating),2) AS rating_stddev,
    COUNT(*) AS restaurant_count
FROM zomato_analytics
GROUP BY price_segment
ORDER BY avg_rating DESC;
