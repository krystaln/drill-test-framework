select count(distinct l_orderkey) from `table_stats/tpch-multi/lineitem` group by l_partkey;
