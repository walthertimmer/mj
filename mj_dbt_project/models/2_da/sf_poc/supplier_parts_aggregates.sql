SELECT
  sp.*,
  ascaqsp.average_available_quantity,
  ascaqsp.average_supply_cost
FROM {{ref('supplier_parts')}} as sp
JOIN {{ref('average_supply_cost_and_available_quantity_per_part')}} AS ascaqsp
  ON ascaqsp.part_key = sp.part_key
