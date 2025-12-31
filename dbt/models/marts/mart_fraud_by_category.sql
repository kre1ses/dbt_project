select
    category,

    count(*) as transactions_cnt,
    sum(is_fraud) as fraud_cnt,
    round(100 * sum(is_fraud) / count(*), 2) as fraud_rate,
    sum(amount) as total_amount
from {{ ref('stg_transactions') }}
group by category
