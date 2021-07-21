SELECT
cnr.*,
aabn.average_account_balance AS avg_acct_bal_by_nation
  FROM {{ref('customer_nation_region')}} AS cnr
    JOIN {{ref('average_acctbal_by_nation')}} AS aabn
      ON aabn.nation_key = cnr.nation_key
