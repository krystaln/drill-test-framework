select p_mfgr as mfgr, count(*) as mycount 
	from `table_stats/tpch-multi/part` 
		where p_mfgr = 'Manufacturer#3' 
group by p_mfgr;
