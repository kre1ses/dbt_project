select
    us_state,

    count(*) as transactions_cnt,
    sum(is_fraud) as fraud_cnt,
    round(100 * sum(is_fraud) / count(*), 2) as fraud_rate,
    count(distinct customer_name) as unique_customers,
    count(distinct merchant) as unique_merchants,
    sum(amount) as total_amount
from {{ ref('stg_transactions') }}
group by us_state
