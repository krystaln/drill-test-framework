alter session set `planner.enable_mergejoin` = false;
select count(*)  
  from `table_stats/tpch-multi/supplier` s, `table_stats/tpch-multi/lineitem` l, `table_stats/tpch-multi/orders` o 
	where s.s_suppkey = l.l_suppkey 
		and o.o_orderkey = l.l_orderkey 
    	and l.l_shipdate between date '1995-01-01' and date '1995-12-31' ;
alter session set `planner.enable_mergejoin` = true;
