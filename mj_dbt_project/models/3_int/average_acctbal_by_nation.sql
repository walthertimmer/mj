SELECT
nation_key,
avg(account_balance) as average_account_balance
  FROM {{ref('customer_nation_region')}}
    GROUP BY nation_key
