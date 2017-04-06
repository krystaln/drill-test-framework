alter session set `planner.enable_streamagg` = false;
select p_mfgr as mfgr, count(*) as mycount 
  from `table_stats/tpch-multi/part` 
	group by p_mfgr 
	having p_mfgr = 'Manufacturer#3';
alter session set `planner.enable_streamagg` = true;
