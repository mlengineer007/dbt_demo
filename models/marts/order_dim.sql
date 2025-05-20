select 
    orderkey,
     custkey,
     orderdate,
     orderpriority
from 

{{ref('stg_tpch_orders')}} as order_dim
