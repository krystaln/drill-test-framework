explain plan including all attributes for
select count(*) 
  from (select l.l_orderkey as x, c.c_custkey as y 
	from `table_stats/tpch-multi/lineitem` l 
		left outer join `table_stats/tpch-multi/customer` c 
			on l.l_orderkey = c.c_custkey) as foo
  where x in (42787,27136,38212,42631,10535,10694,17507);
