SELECT
  PERCENTILE_CONT(0.33) WITHIN GROUP (ORDER BY votes) AS p33,
  PERCENTILE_CONT(0.66) WITHIN GROUP (ORDER BY votes) AS p66
FROM zomato_analytics;


ALTER TABLE zomato_analytics ADD COLUMN engagement_level TEXT;

UPDATE zomato_analytics
SET engagement_level =
  CASE
    WHEN votes < 10 THEN 'Low'
    WHEN votes < 79 THEN 'Medium'
    ELSE 'High'
  END;

