INSERT INTO transactions_db.transactions
FROM INFILE '/data/train.csv'
SETTINGS date_time_input_format = 'best_effort'
FORMAT CSVWithNames;