WITH customer_nation_region AS (
  SELECT * 
    FROM snowflake_sample_data.tpch_sf1.customer
      JOIN snowflake_sample_data.tpch_sf1.nation
      ON n_nationkey=c_nationkey
        JOIN snowflake_sample_data.tpch_sf1.region
        ON n_regionkey=r_regionkey
)

SELECT
r_name AS region,
n_name AS nation,
n_nationkey AS nation_key,
c_name AS customer_name,
c_acctbal AS account_balance,
c_mktsegment As market_segment
FROM customer_nation_region
