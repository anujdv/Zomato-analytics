alter table zomato_analytics add column price_segment TEXT;

update zomato_analytics
set price_segment =
	case
		when price_range = 1 then 'Low'
		when price_range in (2,3) then 'Mid'
		when price_range = 4 then 'High'
	end;

	
