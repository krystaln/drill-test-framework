select
  sum(l.l_extendedprice) / 7.0 as avg_yearly
from
  `table_stats/Tpch0.01/parquet/lineitem` l,
  `table_stats/Tpch0.01/parquet/part` p
where
  p.p_partkey = l.l_partkey
  and p.p_brand = 'Brand#13'
  and p.p_container = 'JUMBO CAN'
  and l.l_quantity < (
    select
      0.2 * avg(l2.l_quantity)
    from
      `table_stats/Tpch0.01/parquet/lineitem` l2
    where
      l2.l_partkey = p.p_partkey
  );
