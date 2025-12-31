select
    transaction_time,
    toDate(transaction_time) as transaction_date,
    toHour(transaction_time) as transaction_hour,
    toDayOfWeek(transaction_time) as transaction_dow,

    merch as merchant,
    cat_id as category,
    amount,

    {{ amount_bucket('amount') }} as amount_segment,

    concat(name_1, ' ', name_2) as customer_name,
    gender,
    us_state,

    lat,
    lon,
    merchant_lat,
    merchant_lon,

    target as is_fraud
from {{ source('transactions_db', 'transactions') }}
