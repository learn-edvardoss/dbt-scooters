with gr_01 as 
(from dev.scooters_raw.users u join dev.scooters_raw.trips t
on t.user_id =u.id 
select datediff('year', u.birth_date,t.started_at) as user_age, 
cast(t.started_at as date) as trip_date,
count(1) as rides
group by all)
from gr_01 select user_age, avg(rides) as avg_rides
group by 1 order by 1