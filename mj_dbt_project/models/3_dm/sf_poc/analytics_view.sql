SELECT
  spa.supplier_name,
  spa.account_balance as supplier_account_balance,
  cnra.account_balance as customer_account_balance,
  cnra.avg_acct_bal_by_nation as average_account_balance_by_nation,
  spa.available_quantity,
  spa.average_available_quantity,
  spa.supply_cost,
  spa.average_supply_cost,
  spa.part_name,
  spa.part_manufacturer,
  spa.part_brand,
  spa.part_type,
  spa.part_size,
  cnra.nation,
  cnra.region,
  cnra.market_segment,
  cnra.customer_name
  ,spa.ExtraKolom
FROM {{ref('supplier_parts_aggregates')}} AS spa
  JOIN {{ref('customer_nation_region_aggregates')}} AS cnra
    ON spa.nation_key = cnra.nation_key
