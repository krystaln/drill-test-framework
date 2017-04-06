alter session set `planner.enable_hashjoin` = false;
select o.O_TOTALPRICE, l.L_ORDERKEY
   from `table_stats/tpch-multi/orders` o, `table_stats/tpch-multi/lineitem` l
   where o.O_ORDERKEY = l.L_ORDERKEY and o.O_TOTALPRICE > 500000.00
   order by o.O_TOTALPRICE;
alter session set `planner.enable_hashjoin` = true;
