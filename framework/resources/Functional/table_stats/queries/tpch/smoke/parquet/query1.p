explain plan including all attributes for
select n.n_nationkey, cast(n.n_name as varchar(20)) n_name,r.r_regionkey,cast(r.r_name as varchar(20)) r_name from `table_stats/tpch-multi/nation` n, `table_stats/tpch-multi/region` r where n.n_regionkey=r.r_regionkey and n.n_name in ('CHINA','UNITED STATES','BRAZIL','IRAN','EGYPT','MOROCCO','GERMANY') and r.r_regionkey in (1,2,0,3);
