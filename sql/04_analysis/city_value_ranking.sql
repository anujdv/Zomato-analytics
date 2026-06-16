SELECT
    city,
    restaurant_count,
    value_score,
    RANK() OVER (ORDER BY value_score DESC) AS value_rank
FROM (
    SELECT
        city,
        COUNT(restaurant_id) AS restaurant_count,
        ROUND(AVG(aggregate_rating), 2) AS avg_rating,
        ROUND(AVG(price_range), 2) AS avg_price_range,
        ROUND(AVG(aggregate_rating) / AVG(price_range), 2) AS value_score
    FROM zomato_analytics
    GROUP BY city
    HAVING COUNT(restaurant_id) > 15
) city_metrics;
