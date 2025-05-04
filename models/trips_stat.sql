SELECT 
count(1) as trips
,count(distinct user_id) as users -- уникальный идентификатор пользователя.
,avg((epoch(finished_at)-epoch(started_at))/60) as avg_duration_m 
--started_at, -- дата и время начала поездки с учетом часового пояса.
--finished_at, -- дата и время окончания поездки с учетом часового пояса.
--distance, -- пройденное в рамках поездки расстояние в метрах.
,sum(price)/100 as revenue_rub
,avg(cast(price==0 as int))*100 as free_trips_pct
from dev.scooters_raw.trips