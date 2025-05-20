select  distinct
   {{get_date_ext('orderdate')}}

from 
{{ref('stg_tpch_orders')}} as date_dim