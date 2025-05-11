select
    user_id,
    "timestamp",
    type_id,
    cast("timestamp" as date) as "date"
from
    {{ source("scooters_raw", "events") }}