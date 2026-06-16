select
    za.engagement_level,
    round(avg(za.aggregate_rating), 2) as avg_rating,
    count(za.restaurant_id) as restaurant_count
from zomato_analytics za
group by za.engagement_level
order by avg_rating desc;