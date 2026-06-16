select 
	round(avg(za.aggregate_rating) filter (where za.engagement_level = 'High'),2) as high_engagement_avg_rating,
	round(avg(za.aggregate_rating) filter (where za.engagement_level = 'Medium'),2) as medium_engagement_avg_rating,
	round(avg(za.aggregate_rating) filter (where za.engagement_level = 'Low'),2) as low_engagement_avg_rating
	from 
 	zomato_analytics za 