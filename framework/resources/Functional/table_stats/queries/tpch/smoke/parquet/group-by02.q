select ps.ps_partkey, count(*) 
  from `table_stats/tpch-multi/lineitem` l, 
          `table_stats/tpch-multi/partsupp` ps 
  where l.l_partkey = ps.ps_partkey 
group by ps.ps_partkey;
