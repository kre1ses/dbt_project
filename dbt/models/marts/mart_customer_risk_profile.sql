with base as (
    select
        customer_name,
        count(*) as tx_cnt,
        sum(is_fraud) as fraud_cnt,
        avg(amount) as avg_amount
    from {{ ref('stg_transactions') }}
    group by customer_name
)

select *,
    case
        when fraud_cnt / tx_cnt > 0.3 then 'HIGH'
        when fraud_cnt / tx_cnt > 0.1 then 'MEDIUM'
        else 'LOW'
    end as risk_level
from base
