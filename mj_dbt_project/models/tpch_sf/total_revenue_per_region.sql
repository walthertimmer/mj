select 
    round(sum(o.o_totalprice)) as sum_totalprice 
    ,r.r_name as region_name
from {{ ref('orders') }} as o
    join {{ ref('customer') }} as c on 1=1 and c.c_custkey = o.o_custkey
    join {{ ref('nation') }} as n on 1=1 and c.c_nationkey = n.n_nationkey
    join {{ ref('region') }} as r on 1=1 and r.r_regionkey = n.n_regionkey
group by r.r_name