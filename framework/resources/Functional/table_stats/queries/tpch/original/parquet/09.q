-- tpch9 using 1395599672 as a seed to the RNG
select
  nation,
  o_year,
  sum(amount) as sum_profit
from
  (
    select
      n.n_name as nation,
      extract(year from o.o_orderdate) as o_year,
      l.l_extendedprice * (1 - l.l_discount) - ps.ps_supplycost * l.l_quantity as amount
    from
      `table_stats/Tpch0.01/parquet/part` p,
      `table_stats/Tpch0.01/parquet/supplier` s,
      `table_stats/Tpch0.01/parquet/lineitem` l,
      `table_stats/Tpch0.01/parquet/partsupp` ps,
      `table_stats/Tpch0.01/parquet/orders` o,
      `table_stats/Tpch0.01/parquet/nation` n
    where
      s.s_suppkey = l.l_suppkey
      and ps.ps_suppkey = l.l_suppkey
      and ps.ps_partkey = l.l_partkey
      and p.p_partkey = l.l_partkey
      and o.o_orderkey = l.l_orderkey
      and s.s_nationkey = n.n_nationkey
      and p.p_name like '%yellow%'
  ) as profit
group by
  nation,
  o_year
order by
  nation,
  o_year desc;
