-- compute the average aggregation of the supply cost and available quantity by part for the supplier

SELECT
  part_key,
  avg(available_quantity) AS average_available_quantity,
  avg(supply_cost) AS average_supply_cost
FROM {{ref('supplier_parts')}}
GROUP BY part_key
