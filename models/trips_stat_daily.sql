FROM
	dev.scooters_raw.trips
SELECT
	cast(started_at as  date) as date,
	count(1) as trips,
	avg(distance)/1000 as avg_distance_km,
	max(price)/100 as max_price_rub
GROUP BY all