{% snapshot snapshot_orders %}

{{
    config(
      --target_database='analytics',
      target_schema='snapshots',
      unique_key='o_orderkey',
      check_cols='all'
      strategy='check', --timestamp or check
      --updated_at='updated_at',
    )
}}

select * from {{ref('tpch_sf','orders')}}

{% endsnapshot %}