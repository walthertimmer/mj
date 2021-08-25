select 
        n.nation:n_nationkey as n_nationkey
        ,n.nation:n_name as n_name
        ,n.nation:n_regionkey as n_regionkey 
        ,n.nation:n_comment as n_comment


from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.JNATION as n