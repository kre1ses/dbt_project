select
    merchant,

    count(*) as tx_cnt,
    sum(amount) as total_amount,
    round(100 * sum(is_fraud) / count(*), 2) as fraud_rate,
    fraud_rate > 20 as is_suspicious
from {{ ref('stg_transactions') }}
group by merchant
