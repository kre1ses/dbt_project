ATTACH TABLE _ UUID '604accf0-48ac-4907-b148-9e944c30d536'
(
    `transaction_time` DateTime,
    `merch` String,
    `cat_id` String,
    `amount` Float64,
    `name_1` String,
    `name_2` String,
    `gender` String,
    `street` String,
    `one_city` String,
    `us_state` String,
    `post_code` String,
    `lat` Float64,
    `lon` Float64,
    `population_city` UInt32,
    `jobs` String,
    `merchant_lat` Float64,
    `merchant_lon` Float64,
    `target` UInt8
)
ENGINE = MergeTree
ORDER BY transaction_time
SETTINGS index_granularity = 8192
