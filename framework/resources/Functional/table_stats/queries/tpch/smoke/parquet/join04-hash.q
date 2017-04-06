alter session set `planner.enable_mergejoin` = false;
select count(*) 
    from `table_stats/tpch-multi/part` p1, `table_stats/tpch-multi/part` p2 
    where p1.p_name = p2.p_name 
	and p1.p_mfgr = p2.p_mfgr;
alter session set `planner.enable_mergejoin` = true;
