{% snapshot snapshot_orders %}

    {{
        config(
          target_schema='snapshots',
          unique_key='o_orderkey',
          check_cols='all',
          strategy='check', --timestamp or check
        )
    }}

    WITH source AS (
      select * 
      from {{ref('orders')}}
      -- select * from {{ref('tpch_sf','orders')}}
    )
  
SELECT * 
FROM source 

{% endsnapshot %}

