WITH orders AS (
    SELECT * FROM {{ ref('stg_tpch_orders') }}
),
lineitems AS (
    SELECT * FROM {{ ref('stg_tpch_line') }}
)

SELECT
    li.orderkey,
    li.linenumber,
    o.orderdate,
    li.shipdate,
    li.commitdate,
    li.receiptdate,
    o.orderpriority,
    o.clerk,
    o.totalprice AS order_total_price,
    li.extendedprice,
    li.quantity,
    li.discount,
    li.tax,
    li.returnflag,
    li.linestatus,
    li.shipmode
FROM lineitems li
JOIN orders o ON li.orderkey = o.orderkey
