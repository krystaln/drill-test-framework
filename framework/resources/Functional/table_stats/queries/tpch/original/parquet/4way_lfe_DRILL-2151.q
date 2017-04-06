alter session set `planner.slice_target` = 1;
select * from `table_stats/Tpch0.01/parquet/lineitem` l left outer join `table_stats/Tpch0.01/parquet/orders` o on (l.l_orderkey = o.o_orderkey) left outer join  `table_stats/Tpch0.01/parquet/customer` c on (l.l_orderkey = c.c_custkey) left outer join  `table_stats/Tpch0.01/parquet/nation` n on (l.l_partkey = n.n_nationkey) left outer join  `table_stats/Tpch0.01/parquet/region` r  on (l.l_suppkey = r.r_regionkey);
alter session set `planner.slice_target` = 100000;
