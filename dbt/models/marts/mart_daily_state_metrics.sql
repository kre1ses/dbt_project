select
    transaction_date,
    us_state,

    count(*) as transactions_cnt,
    sum(amount) as total_amount,
    avg(amount) as avg_amount,
    quantile(0.95)(amount) as p95_amount,
    avg(amount_segment in ('HIGH', 'VERY_HIGH')) as large_txn_share
from {{ ref('stg_transactions') }}
group by transaction_date, us_state
