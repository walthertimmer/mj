select 
        r.region:r_regionkey as r_regionkey
        ,r.region:r_name as r_name
        ,r.region:r_comment as r_comment
       

from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.JREGION as r