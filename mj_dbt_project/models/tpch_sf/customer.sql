select 
        c.customer:c_custkey as c_custkey
        ,c.customer:c_acctbal as c_acctbal
        ,c.customer:c_nationkey as c_nationkey
        ,c.customer:c_name as c_name
        ,c.customer:c_address as c_address
        ,c.customer:c_mktsegment as c_mktsegment
        ,c.customer:c_comment as c_comment

from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.JCUSTOMER as c