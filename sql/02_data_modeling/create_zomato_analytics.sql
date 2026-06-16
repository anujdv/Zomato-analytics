CREATE TABLE zomato_analytics AS
(SELECT
	  "Restaurant ID"        AS restaurant_id,
	  "Restaurant Name"      AS restaurant_name,
	  r."Country Code"       AS country_code,
	  c.country_name,
	  "City"                 AS city,
	  "Locality"             AS locality,
	  "Latitude"             AS latitude,
	  "Longitude"            AS longitude,
	  "Cuisines"             AS cuisines,
	  "Average Cost for two" AS average_cost_for_two,
	  "Currency"             AS currency,
	  "Price range"          AS price_range,
	  case
		  WHEN "Has Online delivery" = 'Yes' THEN 'Y'
		ELSE 'N'
  END AS has_online_delivery,

  CASE
    WHEN "Has Table booking" = 'Yes' THEN 'Y'
    ELSE 'N'
  END AS has_table_booking,

  "Aggregate rating"     AS aggregate_rating,
  "Votes"                AS votes

FROM zomato_raw r
LEFT JOIN country_lookup c
  ON r."Country Code" = c.country_code
WHERE "Aggregate rating" IS NOT null);
