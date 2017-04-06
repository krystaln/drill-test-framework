-- tpch4 using 1395599672 as a seed to the RNG
explain plan including all attributes for
select
  o.o_orderpriority,
  count(*) as order_count
from
  `table_stats/Tpch0.01/parquet/orders` o
where
  o.o_orderdate >= date '1996-10-01'
  and o.o_orderdate < date '1996-10-01' + interval '3' month
  and 
  exists (
    select
      *
    from
      `table_stats/Tpch0.01/parquet/lineitem` l
    where
      l.l_orderkey = o.o_orderkey
      and l.l_commitdate < l.l_receiptdate
  )
group by
  o.o_orderpriority
order by
  o.o_orderpriority;
