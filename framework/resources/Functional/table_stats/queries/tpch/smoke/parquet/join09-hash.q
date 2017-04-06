alter session set `planner.enable_mergejoin` = false;
select count(*) 
  from (select l.l_orderkey as x, c.c_custkey as y 
	from `table_stats/tpch-multi/lineitem` l 
    	left outer join `table_stats/tpch-multi/customer` c 
			on l.l_orderkey = c.c_custkey) as foo
  where y < 10000;
alter session set `planner.enable_mergejoin` = true;
