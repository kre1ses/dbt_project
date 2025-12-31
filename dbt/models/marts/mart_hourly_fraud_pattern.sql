select
    transaction_dow,
    transaction_hour,

    count(*) as tx_cnt,
    sum(is_fraud) as fraud_cnt,
    round(100 * sum(is_fraud) / count(*), 2) as fraud_rate
from {{ ref('stg_transactions') }}
group by transaction_dow, transaction_hour
