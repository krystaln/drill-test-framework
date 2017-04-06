alter session set `planner.enable_hashjoin` = false;
explain plan including all attributes for
select count(*) 
  from (select l.l_orderkey as x, c.c_custkey as y 
	from `table_stats/tpch-multi/lineitem` l 
    	left outer join `table_stats/tpch-multi/customer` c 
			on l.l_orderkey = c.c_custkey) as foo
  where y in (select c_custkey from `table_stats/tpch-multi/customer` where c_custkey > 700);
alter session set `planner.enable_hashjoin` = true;
