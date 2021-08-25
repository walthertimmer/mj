select 
        o.orders:o_orderkey as o_orderkey
        ,o.orders:o_custkey as o_custkey
        ,o.orders:o_orderstatus as o_orderstatus 
        ,o.orders:o_totalprice as o_totalprice
        ,o.orders:o_orderdate as o_orderdate 
        ,o.orders:o_clerk as o_clerk
        ,o.orders:o_orderpriority as o_orderpriority
        ,o.orders:o_shippriority as o_shippriority 


from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.JORDERS as o