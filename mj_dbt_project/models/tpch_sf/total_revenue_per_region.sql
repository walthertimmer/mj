select 
    o.o_totalprice 
    ,r.r_name
from {{ ref('orders') }} as o
join {{ ref('nation') }} as n on 1=1 and o.o_nationkey = n.n_nationkey
join {{ ref('region') }} as r on 1=1 and r.r_regionkey = n.n_regionkey